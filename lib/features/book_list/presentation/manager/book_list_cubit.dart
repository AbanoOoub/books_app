import 'package:bloc/bloc.dart';
import 'package:books_app/core/constants/app_constants.dart';
import 'package:books_app/core/utils/app_colors.dart';
import 'package:books_app/features/book_list/domain/use_cases/get_book_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/helpers/debouncer.dart';
import '../../domain/entities/book_entity.dart';

part 'book_list_state.dart';

part 'book_list_cubit.freezed.dart';

@injectable
class BookListCubit extends Cubit<BookListState> {
  final GetBookListUseCase getBookListUseCase;

  BookListCubit(this.getBookListUseCase)
      : super(BookListState(
          currStatus: const BookListStateStatus.initial(),
          books: const [],
          page: 1,
          debouncing: Debouncer(milliseconds: 500),
          scrollController: ScrollController(),
        ));

  void init() {
    state.scrollController?.addListener(scrollListener);
    getBooks();
  }

  void scrollListener() {
    if (state.scrollController?.position.pixels ==
        state.scrollController?.position.maxScrollExtent) {
      getMoreBooks();
    }
  }

  void getBooks() async {
    emit(state.copyWith(currStatus: BookListStateStatus.getBookListLoading()));
    final result = await getBookListUseCase(
        GetBookListParams(page: 1, searchTerm: state.searchTerm));
    result.fold(
      (failure) {
        Fluttertoast.showToast(
            msg: failure.errMessage, backgroundColor: AppColors.error);
        emit(
            state.copyWith(currStatus: BookListStateStatus.getBookListError()));
      },
      (books) => emit(state.copyWith(
          page: books.isEmpty ? state.page : state.page + 1,
          currStatus: BookListStateStatus.getBookListSuccess(),
          books: books)),
    );
  }

  void getMoreBooks() async {
    await EasyLoading.show(indicator: AppConstants.loading);

    final result = await getBookListUseCase(
        GetBookListParams(page: state.page, searchTerm: state.searchTerm));
    await EasyLoading.dismiss();

    result.fold(
      (failure) {
        Fluttertoast.showToast(
            msg: failure.errMessage, backgroundColor: AppColors.error);
        emit(
            state.copyWith(currStatus: BookListStateStatus.getBookListError()));
      },
      (books) => emit(
        state.copyWith(
            currStatus: BookListStateStatus.getBookListSuccess(),
            page: books.isEmpty ? state.page : state.page + 1,
            books: [...state.books, ...books]),
      ),
    );
  }

  void addSearchTerm(String? searchTerm) {
    state.debouncing.run(() {
      emit(state.copyWith(searchTerm: searchTerm));
      getBooks();
    });
  }
}
