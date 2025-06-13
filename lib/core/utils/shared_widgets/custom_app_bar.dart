import 'package:books_app/core/constants/app_locales.dart';
import 'package:books_app/core/extensions/padding_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_colors.dart';
import '../app_text_style.dart';
import 'custom_ink_well.dart';
import 'custom_text_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.isHaveBackButton = true,
    this.backgroundColor,
    this.foregroundColor,
    this.titleColor,
    this.elevation,
    this.iconColor,
    this.onBackPressed,
    this.actions,
    this.centerTitle,
    this.toolbarHeight,
    this.titleTextStyle,
  });

  final String title;
  final bool isHaveBackButton;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? titleColor;
  final Color? iconColor;
  final double? elevation;
  final Function()? onBackPressed;
  final List<Widget>? actions;
  final double? toolbarHeight;
  final bool? centerTitle;
  final TextStyle? titleTextStyle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      toolbarHeight: kToolbarHeight,
      scrolledUnderElevation: 0,
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor ?? Colors.transparent,
      title: CustomTextWidget(
        text: title,
        textStyle: titleTextStyle ?? AppTextStyle.bodyMedium,
        textColor: titleColor ?? AppColors.textColor,
      ),
      actions: actions,
      automaticallyImplyLeading: isHaveBackButton,
      leading: isHaveBackButton
          ? CustomInkWell(
              onTap: () {
                onBackPressed != null
                    ? onBackPressed!()
                    : Navigator.pop(context);
              },
              child: Padding(
                padding: context.isArabic ? 20.padRight : 20.padLeft,
                child: Icon(Icons.arrow_back_ios,
                    size: 20.h, color: AppColors.textColor),
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
