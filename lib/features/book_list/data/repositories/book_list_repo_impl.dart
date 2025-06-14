import 'package:books_app/core/network/netwok_info.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/repositories/book_list_repo.dart';
import '../../domain/use_cases/get_book_list.dart';
import '../data_sources/book_list_local_date_source.dart';
import '../data_sources/book_list_remote_data_source.dart';
import '../models/book_model.dart';

@Injectable(as: BookListRepo)
class BookListRepoImpl extends BookListRepo {
  final BookListRemoteDataSource bookListRemoteDataSource;
  final BookListLocalDataSource bookListLocalDataSource;
  final INetworkInfo networkInfo;

  BookListRepoImpl(this.bookListRemoteDataSource, this.bookListLocalDataSource,
      this.networkInfo);

  @override
  Future<Either<Failure, List<BookModel>>> getBookList(
      {required GetBookListParams params}) async {
    final isConnected = await networkInfo.isConnected;

    if (isConnected) {
      try {
        final res = await bookListRemoteDataSource.getBookList(params: params);
        await bookListLocalDataSource.cacheBookList(
            books: res, page: params.page);
        return Right(res);
      } catch (e) {
        return Left(ServerFailure(e.toString()));
      }
    } else {
      try {
        final res =
            await bookListLocalDataSource.getLocalBookList(params: params);
        return Right(res);
      } catch (e) {
        return Left(CacheFailure(e.toString()));
      }
    }
  }
}
