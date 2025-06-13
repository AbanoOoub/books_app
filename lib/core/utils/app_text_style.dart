import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppTextStyle {
  static TextStyle _textStyle(double fontSize, FontWeight fontWeight,
      {bool underline = false}) {
    return TextStyle(
      fontSize: (fontSize).sp,
      fontWeight: fontWeight,
      color: AppColors.textColor,
      decoration: underline ? TextDecoration.underline : null,
      decorationColor: underline ? AppColors.grey : null,
    );
  }

  // Heading Texts
  static TextStyle get headingXLarge => _textStyle(34, FontWeight.w600);
  static TextStyle get headingLarge => _textStyle(24, FontWeight.w600);
  static TextStyle get headingMedium => _textStyle(22, FontWeight.w600);
  static TextStyle get headingSmall => _textStyle(20, FontWeight.w600);

  // Body Texts
  static TextStyle get bodyLarge => _textStyle(18, FontWeight.w400);
  static TextStyle get bodyInfo => _textStyle(16, FontWeight.w400);
  static TextStyle get bodyMedium => _textStyle(16, FontWeight.w400);
  static TextStyle get bodySmall => _textStyle(14, FontWeight.w400);
  static TextStyle get bodyXSmall => _textStyle(12, FontWeight.w400);

  // SemiBold Body Texts
  static TextStyle get bodyLargeSemiBold => _textStyle(18, FontWeight.w600);
  static TextStyle get bodyMediumSemiBold => _textStyle(16, FontWeight.w600);
  static TextStyle get bodySmallSemiBold => _textStyle(14, FontWeight.w600);
  static TextStyle get bodyXSmallSemiBold => _textStyle(12, FontWeight.w600);

  // Link Texts
  static TextStyle get linkMedium =>
      _textStyle(16, FontWeight.w400, underline: true);
  static TextStyle get linkSmall =>
      _textStyle(14, FontWeight.w400, underline: true);
}
