import 'dart:convert';
import 'dart:developer';

import 'package:books_app/core/error/exceptions.dart';
import 'package:books_app/core/services/sql_database_service.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/get_book_list.dart';
import '../models/book_model.dart';

abstract class BookListLocalDataSource {
  Future<void> cacheBookList(
      {required List<BookModel> books, required int page});

  Future<List<BookModel>> getLocalBookList({required GetBookListParams params});
}

@Injectable(as: BookListLocalDataSource)
class BookListLocalDataSourceImpl extends BookListLocalDataSource {
  final SqlDatabaseService databaseService;

  BookListLocalDataSourceImpl({required this.databaseService});

  @override
  Future<List<BookModel>> getLocalBookList(
      {required GetBookListParams params}) async {
    try {
      final isSearchEmpty =
          params.searchTerm == null || params.searchTerm!.isEmpty;

      final results = await databaseService.readFromDatabase(
        isSearchEmpty
            ? 'SELECT full_json FROM Books WHERE page = ?'
            : 'SELECT full_json FROM Books WHERE title LIKE ? AND page = ?',
        isSearchEmpty ? [params.page] : ['%${params.searchTerm}%', params.page],
      );

      return results
          .map((e) => BookModel.fromJson(jsonDecode(e['full_json'])))
          .toList();
    } catch (e) {
      log("Failed to get local book list: $e");
      throw CacheException('Failed to get local book list');
    }
  }

  @override
  Future<void> cacheBookList(
      {required List<BookModel> books, required int page}) async {
    try {
      for (final book in books) {
        final existing = await databaseService.readFromDatabase(
          'SELECT title FROM Books WHERE book_id = ?',
          [book.id],
        );

        if (existing.isEmpty) {
          await databaseService.insertToDatabase(
              sql:
                  'INSERT INTO Books (book_id, title, page, full_json) VALUES (?, ?, ?, ?)',
              args: [
                book.id,
                book.title,
                page,
                jsonEncode(book.toJson()),
              ]);
        }
      }
    } catch (e) {
      log("Failed to cache book list: $e");
      throw CacheException('Failed to cache book list');
    }
  }
}
