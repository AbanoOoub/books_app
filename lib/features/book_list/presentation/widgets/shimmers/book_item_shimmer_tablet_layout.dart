import 'package:books_app/core/extensions/padding_extensions.dart';
import 'package:books_app/core/utils/shared_widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';

class BookItemShimmerTabletLayout extends StatelessWidget {
  const BookItemShimmerTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 10.padAll,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.lightGrey),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(children: [
        ShimmerWidget.rectangular(height: 150.h, width: 130.w),
        10.horizontalSpace,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerWidget.rectangular(height: 35.w, width: 400.w),
              10.verticalSpace,
              ShimmerWidget.rectangular(height: 35.w, width: 200.w),
              10.verticalSpace,
              ShimmerWidget.rectangular(height: 35.w, width: 160.w),
            ],
          ),
        ),
      ]),
    );
  }
}
