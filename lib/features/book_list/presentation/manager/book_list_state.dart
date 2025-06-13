part of 'book_list_cubit.dart';

@freezed
class BookListState with _$BookListState {
  const factory BookListState({
    required BookListStateStatus currStatus,
    required List<BookEntity> books,
    String? searchTerm,
    @Default(1) int page,
    required Debouncer debouncing,
    ScrollController? scrollController,
  }) = _BookListState;
}

@freezed
class BookListStateStatus with _$BookListStateStatus {
  const factory BookListStateStatus.initial() = Initial;

  const factory BookListStateStatus.getBookListLoading() = GetBookListLoading;

  const factory BookListStateStatus.getBookListSuccess() = GetBookListSuccess;

  const factory BookListStateStatus.getBookListError() = GetBookListError;
}
