import 'package:books_app/features/book_list/presentation/widgets/shimmers/book_item_shimmer_mobile_layout.dart';
import 'package:books_app/features/book_list/presentation/widgets/shimmers/book_item_shimmer_tablet_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/shared_widgets/adaptive_layout_builder.dart';

class BookListShimmer extends StatelessWidget {
  const BookListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return AdaptiveLayoutBuilder(
            mobileBuilder: (context) {
              return BookItemShimmerMobileLayout();
            },
            tabletBuilder: (BuildContext context) {
              return BookItemShimmerTabletLayout();
            },
            desktopBuilder: (BuildContext context) {
              return BookItemShimmerTabletLayout();
            },
          );
        },
        separatorBuilder: (context, index) => 10.verticalSpace,
        itemCount: 10,
      ),
    );
  }
}
