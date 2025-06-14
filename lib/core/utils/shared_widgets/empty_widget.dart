import 'package:books_app/core/extensions/padding_extensions.dart';
import 'package:books_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supercharged/supercharged.dart';

import '../app_colors.dart';
import 'custom_text_widget.dart';

class EmptyWidget extends StatefulWidget {
  final Widget content;
  final String text;
  final String? text2;

  const EmptyWidget(
      {super.key, required this.content, required this.text, this.text2});

  @override
  State<EmptyWidget> createState() => _EmptyWidgetState();
}

class _EmptyWidgetState extends State<EmptyWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (BuildContext context, Widget? child) => ScaleTransition(
        scale: _animationController.drive(0.5.tweenTo(1)),
        child: FadeTransition(
          opacity: _animationController..drive(1.0.tweenTo(0.0)),
          child: child!,
        ),
      ),
      animation: _animationController,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          widget.content,
          15.verticalSpace,
          CustomTextWidget(
            text: widget.text,
            textStyle: AppTextStyle.bodyLargeSemiBold(context),
            textAlign: TextAlign.center,
          ),
          8.verticalSpace,
          if (widget.text2 != null && widget.text2!.isNotEmpty)
            Padding(
              padding: 50.padHorizontal,
              child: CustomTextWidget(
                text: widget.text2!,
                textStyle: AppTextStyle.bodySmall(context),
                textColor: AppColors.secondColor,
                textAlign: TextAlign.center,
                maxLines: 10,
              ),
            )
        ],
      ),
    );
  }
}
