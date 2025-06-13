import 'package:books_app/core/extensions/padding_extensions.dart';
import 'package:books_app/core/utils/shared_widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';

class BookListShimmer extends StatelessWidget {
  const BookListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            padding: 10.padAll,
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(color: AppColors.lightGrey),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Row(children: [
              ShimmerWidget.rectangular(
                height: 120.h,
                width: 100.w,
              ),
              10.horizontalSpace,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShimmerWidget.rectangular(height: 25.w, width: 200.w),
                    10.verticalSpace,
                    ShimmerWidget.rectangular(height: 25.w, width: 100.w),
                    10.verticalSpace,
                    ShimmerWidget.rectangular(height: 25.w, width: 80.w),
                  ],
                ),
              ),
            ]),
          );
        },
        separatorBuilder: (context, index) => 10.verticalSpace,
        itemCount: 10,
      ),
    );
  }
}
