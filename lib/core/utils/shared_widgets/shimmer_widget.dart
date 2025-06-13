import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../app_colors.dart';

class ShimmerWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final ShapeBorder shapeBorder;

  const ShimmerWidget.rectangular(
      {super.key,
      this.width,
      this.height,
      this.shapeBorder = const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      )});

  const ShimmerWidget.circular(
      {super.key,
      this.width = double.infinity,
      this.height,
      this.shapeBorder = const CircleBorder()});

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: AppColors.secondColor,
        highlightColor: AppColors.white,
        child: Container(
          width: width,
          height: height ?? 30.h,
          decoration: ShapeDecoration(
            color: AppColors.white,
            shape: shapeBorder,
          ),
        ),
      );
}
