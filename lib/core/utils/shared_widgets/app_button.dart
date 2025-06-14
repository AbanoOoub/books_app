import 'package:books_app/core/extensions/padding_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app_colors.dart';
import '../app_text_style.dart';
import 'custom_text_widget.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final Widget? icon;
  final double? height;
  final double? width;
  final double? radius;
  final Function()? onTap;
  final Color? background;
  final Color? textColor;
  final BoxBorder? border;
  final bool iconIsPre;
  final bool isLoading;
  final double? textSize;
  final double? textHeight;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const CustomButton({
    super.key,
    this.text,
    this.icon,
    this.height,
    this.width,
    this.radius,
    this.onTap,
    this.background,
    this.textColor,
    this.border,
    this.iconIsPre = false,
    this.isLoading = false,
    this.textSize,
    this.textHeight,
    this.margin,
    this.padding,
  });

  const CustomButton.loading({Key? key, EdgeInsetsGeometry? margin})
      : this(key: key, isLoading: true, margin: margin);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding ?? 20.padAll,
        margin: margin,
        decoration: BoxDecoration(
            color: background ?? AppColors.mainColor,
            border: border,
            borderRadius: BorderRadius.circular(radius ?? 16.r)),
        child: isLoading
            ? const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (iconIsPre && icon != null) icon!,
                  if (iconIsPre && icon != null) 10.horizontalSpace,
                  if (text != null)
                    Flexible(
                      child: CustomTextWidget(
                        text: text ?? "",
                        textStyle: AppTextStyle.bodyMedium(context)
                            .copyWith(height: textHeight ?? 0.5.w),
                        textColor: textColor ?? AppColors.secondColor,
                      ),
                    ),
                  if (!iconIsPre && icon != null) 10.horizontalSpace,
                  if (!iconIsPre && icon != null) icon!,
                ],
              ),
      ),
    );
  }
}
