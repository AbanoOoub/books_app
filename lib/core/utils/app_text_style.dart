import 'package:books_app/core/utils/app_screen_size.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyle {
  static TextStyle _textStyle(
      BuildContext context, double fontSize, FontWeight fontWeight,
      {bool underline = false}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: fontSize),
      fontWeight: fontWeight,
      color: AppColors.textColor,
      decoration: underline ? TextDecoration.underline : null,
      decorationColor: underline ? AppColors.grey : null,
    );
  }

  // Heading Texts
  static TextStyle headingXLarge(BuildContext context) =>
      _textStyle(context, 34, FontWeight.w600);

  static TextStyle headingLarge(BuildContext context) =>
      _textStyle(context, 24, FontWeight.w600);

  static TextStyle headingMedium(BuildContext context) =>
      _textStyle(context, 22, FontWeight.w600);

  static TextStyle headingSmall(BuildContext context) =>
      _textStyle(context, 20, FontWeight.w600);

  // Body Texts
  static TextStyle bodyLarge(BuildContext context) =>
      _textStyle(context, 20, FontWeight.w400);

  static TextStyle bodyMedium(BuildContext context) =>
      _textStyle(context, 18, FontWeight.w400);

  static TextStyle bodySmall(BuildContext context) =>
      _textStyle(context, 16, FontWeight.w400);

  static TextStyle bodyXSmall(BuildContext context) =>
      _textStyle(context, 14, FontWeight.w400);

  // Body Texts SemiBold
  static TextStyle bodyLargeSemiBold(BuildContext context) =>
      _textStyle(context, 20, FontWeight.w700);

  static TextStyle linkMedium(BuildContext context) =>
      _textStyle(context, 18, FontWeight.w400, underline: true);

  static TextStyle linkSmall(BuildContext context) =>
      _textStyle(context, 14, FontWeight.w400, underline: true);
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 0.85;
  double upperLimit = fontSize * 1.8;

  double finalSize = responsiveFontSize.clamp(lowerLimit, upperLimit);
  return finalSize;
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < AppScreenSize.tablet) {
    return width / 550;
  } else if (width < AppScreenSize.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
