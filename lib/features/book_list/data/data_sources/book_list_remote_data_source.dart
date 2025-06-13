import 'package:injectable/injectable.dart';

import '../../../../core/api/interfaces/i_api_requests.dart';
import '../../../../core/constants/end_points.dart';
import '../../domain/use_cases/get_book_list.dart';
import '../models/book_model.dart';

abstract class BookListRemoteDataSource {
  Future<List<BookModel>> getBookList({required GetBookListParams params});
}

@Injectable(as: BookListRemoteDataSource)
class BookListRemoteDataSourceImpl implements BookListRemoteDataSource {
  final IApiRequests apiRequests;

  BookListRemoteDataSourceImpl({required this.apiRequests});

  @override
  Future<List<BookModel>> getBookList(
      {required GetBookListParams params}) async {
    final response = await apiRequests.get(
      endpoint: EndPoints.getBooksList,
      queryParameters: {
        'page': params.page,
        if (params.searchTerm != null && params.searchTerm!.isNotEmpty)
          'search': params.searchTerm,
      },
    );
    final List<BookModel> bookList = List<BookModel>.from(
        response['results'].map((x) => BookModel.fromJson(x)));
    return bookList;
  }
}
