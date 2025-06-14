import 'package:books_app/core/extensions/padding_extensions.dart';
import 'package:books_app/core/utils/shared_widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/shared_widgets/adaptive_layout_builder.dart';

class BookItemShimmerMobileLayout extends StatelessWidget {
  const BookItemShimmerMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 10.padAll,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.lightGrey),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        children: [
          ShimmerWidget.rectangular(height: 300.h, width: double.infinity),
          10.verticalSpace,
          ShimmerWidget.rectangular(height: 25.w, width: 200.w),
          10.verticalSpace,
          ShimmerWidget.rectangular(height: 25.w, width: 100.w),
          10.verticalSpace,
          ShimmerWidget.rectangular(height: 25.w, width: 300.w),
        ],
      ),
    );
  }
}
