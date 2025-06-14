import 'package:books_app/core/error/failures.dart';
import 'package:books_app/core/usecases/usecase.dart';
import 'package:books_app/features/book_list/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../repositories/book_list_repo.dart';

@LazySingleton()
class GetBookListUseCase
    implements UseCase<List<BookEntity>, GetBookListParams> {
  final BookListRepo bookListRepo;

  GetBookListUseCase(this.bookListRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call(GetBookListParams params) {
    return bookListRepo.getBookList(params: params);
  }
}

class GetBookListParams {
  final int page;
  final String? searchTerm;

  GetBookListParams({required this.page, this.searchTerm});
}
