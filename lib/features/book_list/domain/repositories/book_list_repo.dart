import 'package:books_app/features/book_list/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../use_cases/get_book_list.dart';

abstract class BookListRepo {
  Future<Either<Failure, List<BookEntity>>> getBookList(
      {required GetBookListParams params});
}
