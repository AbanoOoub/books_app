import 'package:auto_route/auto_route.dart';
import 'package:books_app/core/extensions/padding_extensions.dart';
import 'package:books_app/core/utils/app_text_style.dart';
import 'package:books_app/core/utils/shared_widgets/adaptive_layout_builder.dart';
import 'package:books_app/core/utils/shared_widgets/custom_app_bar.dart';
import 'package:books_app/core/utils/shared_widgets/custom_text_form_field.dart';
import 'package:books_app/core/utils/shared_widgets/empty_widget.dart';
import 'package:books_app/features/book_list/presentation/manager/book_list_cubit.dart';
import 'package:books_app/init_main.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/shared_widgets/custom_ink_well.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/locale_keys.g.dart';
import '../../../change_language/presentation/widgets/language_selection_bottom_sheet.dart';
import '../widgets/book_item_mobile_layout.dart';
import '../widgets/book_item_tablet_layout.dart';
import '../widgets/shimmers/book_list_shimmer.dart';

@RoutePage()
class BookListScreen extends StatelessWidget {
  const BookListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: LocaleKeys.gutenbergBooks.tr(),
        isHaveBackButton: false,
        centerTitle: true,
        titleTextStyle: AppTextStyle.headingXLarge(context),
        actions: [
          Padding(
            padding: 20.padHorizontal,
            child: CustomInkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return LanguageSelectionBottomSheet();
                  },
                );
              },
              child: Icon(Icons.language),
            ),
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => getIt<BookListCubit>()..init(),
        child: BlocBuilder<BookListCubit, BookListState>(
          builder: (context, state) {
            return RefreshIndicator(
              color: AppColors.white,
              backgroundColor: AppColors.mainColor,
              onRefresh: () async => context.read<BookListCubit>().getBooks(),
              child: Padding(
                padding: 15.padHorizontal,
                child: Column(
                  children: [
                    CustomTextFormField(
                      prefixItem:
                          Icon(Icons.search, color: AppColors.textColor),
                      hint: LocaleKeys.searchBooks.tr(),
                      borderSide: BorderSide.none,
                      onChange: (s) =>
                          context.read<BookListCubit>().addSearchTerm(s),
                    ),
                    10.verticalSpace,
                    BlocBuilder<BookListCubit, BookListState>(
                      buildWhen: (previous, current) {
                        return current.currStatus is GetBookListLoading ||
                            current.currStatus is GetBookListSuccess;
                      },
                      builder: (context, state) {
                        if (state.currStatus is GetBookListLoading) {
                          return BookListShimmer();
                        }
                        return Expanded(
                          child: state.books.isEmpty
                              ? Center(
                                  child: SingleChildScrollView(
                                    physics: AlwaysScrollableScrollPhysics(),
                                    child: EmptyWidget(
                                      content: Assets.images.logo.image(
                                        height: 150.h,
                                        width: 150.w,
                                        fit: BoxFit.contain,
                                        color: AppColors.bgColor,
                                        colorBlendMode: BlendMode.modulate,
                                      ),
                                      text: LocaleKeys.noResults.tr(),
                                    ),
                                  ),
                                )
                              : ListView.separated(
                                  controller: state.scrollController,
                                  itemCount: state.books.length,
                                  itemBuilder: (context, index) {
                                    return AdaptiveLayoutBuilder(
                                      mobileBuilder: (context) =>
                                          BookItemMobileLayout(
                                        imageUrl: state
                                            .books[index].formats.imageJpeg,
                                        title: state.books[index].titleOfBook,
                                        authors: state.books[index].authorsList,
                                        summaries: state.books[index].summaries,
                                        downloadsCount:
                                            state.books[index].downloadsCount,
                                      ),
                                      tabletBuilder: (context) =>
                                          BookItemTabletLayout(
                                        imageUrl: state
                                            .books[index].formats.imageJpeg,
                                        title: state.books[index].titleOfBook,
                                        authors: state.books[index].authorsList,
                                        summaries: state.books[index].summaries,
                                        downloadsCount:
                                            state.books[index].downloadsCount,
                                      ),
                                      desktopBuilder: (context) =>
                                          BookItemTabletLayout(
                                        imageUrl: state
                                            .books[index].formats.imageJpeg,
                                        title: state.books[index].titleOfBook,
                                        authors: state.books[index].authorsList,
                                        summaries: state.books[index].summaries,
                                        downloadsCount:
                                            state.books[index].downloadsCount,
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      10.verticalSpace,
                                ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
