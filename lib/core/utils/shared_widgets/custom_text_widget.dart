import 'package:flutter/material.dart';

import '../app_text_style.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(
      {super.key,
      required this.text,
      this.maxLines,
      this.textAlign,
      this.textStyle,
      this.fontSize,
      this.textColor,
      this.fontWeight});

  final String text;
  final int? maxLines;
  final double? fontSize;
  final TextAlign? textAlign;
  final TextStyle? textStyle;
  final Color? textColor;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines ?? 2,
      textAlign: textAlign ?? TextAlign.start,
      overflow: TextOverflow.ellipsis,
      style: textStyle != null
          ? textStyle!.copyWith(
              color: textColor, fontWeight: fontWeight, fontSize: fontSize)
          : AppTextStyle.bodyMedium.copyWith(
              color: textColor, fontWeight: fontWeight, fontSize: fontSize),
    );
  }
}
