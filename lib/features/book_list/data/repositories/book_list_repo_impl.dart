import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/repositories/book_list_repo.dart';
import '../../domain/use_cases/get_book_list.dart';
import '../data_sources/book_list_remote_data_source.dart';
import '../models/book_model.dart';

@Injectable(as: BookListRepo)
class BookListRepoImpl extends BookListRepo {
  final BookListRemoteDataSource bookListRemoteDataSource;

  BookListRepoImpl(this.bookListRemoteDataSource);

  @override
  Future<Either<Failure, List<BookModel>>> getBookList(
      {required GetBookListParams params}) async {
    try {
      final res = await bookListRemoteDataSource.getBookList(params: params);
      return Right(res);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
