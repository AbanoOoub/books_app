import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../gen/assets.gen.dart';
import '../app_colors.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage(
      {super.key,
      this.height,
      this.width,
      this.radius = 0,
      required this.imageUrl,
      this.withBorder = false,
      this.borderColor = AppColors.mainColor,
      this.placeholder,
      this.errorWidget});

  final double? height;
  final double? width;
  final double radius;
  final String? imageUrl;
  final bool withBorder;
  final Color borderColor;
  final Widget? placeholder;
  final Widget Function(BuildContext, String, Object)? errorWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(radius.r),
        border: withBorder ? Border.all(color: borderColor) : null,
      ),
      child: imageUrl != null
          ? ClipRRect(
              borderRadius: BorderRadius.circular(radius.r),
              child: imageUrl!
                          .split(".")
                          .lastOrNull
                          ?.toLowerCase()
                          .contains("svg") ??
                      false
                  ? SvgPicture.network(
                      imageUrl!,
                      height: height,
                      width: width,
                      fit: BoxFit.fill,
                      placeholderBuilder: (context) =>
                          placeholder ??
                          Assets.images.logo
                              .image(height: height, width: width),
                    )
                  : CachedNetworkImage(
                      height: height,
                      width: width,
                      imageUrl: imageUrl!,
                      // imageUrl: "",
                      fit: BoxFit.fill,
                      placeholder: (context, url) =>
                          placeholder ??
                          Assets.images.logo.image(
                            height: height,
                            width: width,
                          ),
                      errorWidget: errorWidget ??
                          (context, url, error) {
                            return Assets.images.logo
                                .image(width: width, height: height);
                          },
                    ),
            )
          : Assets.images.logo.image(width: width, height: height),
    );
  }
}
