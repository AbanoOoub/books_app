import 'dart:developer';
import 'package:books_app/core/extensions/padding_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../init_main.dart';
import '../app_colors.dart';
import '../app_text_style.dart';
import 'custom_ink_well.dart';

class CustomTextFormField extends StatefulWidget {
  final String? hint;
  final String? label;
  final Function(String? s)? onChange;
  final bool isPassword;
  final bool? enabled;
  final int? maxLines;
  final bool denySpaces;
  final TextInputType? keyBord;
  final Widget? suffixItem;
  final Widget? prefixItem;
  final String? prefixText;
  final String? suffixText;
  final Color? fillColor;
  final IconData? icon;
  final IconData? iconPre;
  final Function()? suffixPressed;
  final Function()? onTap;
  final List<TextInputFormatter>? textInputFormatter;
  final TextEditingController? fileInputController;
  final String? Function(String?)? validator;
  final BorderSide? borderSide;
  final EdgeInsets? contentPadding;
  final String? initialValue;
  final double? radius;
  final FocusNode? focusNode;
  final bool isLTR;
  final bool isReadOnly;

  const CustomTextFormField({
    super.key,
    this.hint,
    this.label,
    this.onChange,
    this.denySpaces = false,
    this.isPassword = false,
    this.enabled,
    this.isReadOnly = false,
    this.maxLines = 1,
    this.icon,
    this.iconPre,
    this.fillColor,
    this.suffixPressed,
    this.fileInputController,
    this.validator,
    this.keyBord,
    this.textInputFormatter,
    this.borderSide,
    this.contentPadding,
    this.initialValue,
    this.prefixText,
    this.radius,
    this.focusNode,
    this.suffixItem,
    this.suffixText,
    this.onTap,
    this.isLTR = false,
    this.prefixItem,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isObscure = false;
  String? initialValue;

  @override
  void initState() {
    isObscure = widget.isPassword;
    initialValue = widget.initialValue;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CustomTextFormField oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.initialValue != widget.initialValue &&
        widget.initialValue != null) {
      setState(() {
        initialValue = widget.initialValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    log("initial value:: $initialValue");
    return TextFormField(
      readOnly: widget.isReadOnly,
      textAlign: TextAlign.start,
      enabled: widget.enabled,
      initialValue: initialValue,
      onChanged: widget.onChange,
      keyboardType: widget.keyBord,
      validator: widget.validator,
      maxLines: widget.maxLines,
      autofocus: false,
      focusNode: widget.focusNode,
      textDirection: widget.isLTR ? TextDirection.ltr : null,
      contextMenuBuilder: (context, editableTextState) {
        return widget.isPassword
            ? AdaptiveTextSelectionToolbar.buttonItems(
                anchors: editableTextState.contextMenuAnchors,
                buttonItems: [
                  const ContextMenuButtonItem(
                    onPressed: null,
                    type: ContextMenuButtonType.copy,
                  ),
                  const ContextMenuButtonItem(
                    onPressed: null,
                    type: ContextMenuButtonType.cut,
                  ),
                  ContextMenuButtonItem(
                    onPressed: () => editableTextState
                        .pasteText(SelectionChangedCause.keyboard),
                    type: ContextMenuButtonType.paste,
                  ),
                  const ContextMenuButtonItem(
                    onPressed: null,
                    type: ContextMenuButtonType.selectAll,
                  ),
                ],
              )
            : AdaptiveTextSelectionToolbar.editableText(
                editableTextState: editableTextState);
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: isObscure,
      controller: widget.fileInputController,
      inputFormatters: [
        if (widget.denySpaces) FilteringTextInputFormatter.deny(RegExp(r'\s')),
        ...?widget.textInputFormatter,
        if (widget.isPassword)
          FilteringTextInputFormatter.allow(
            RegExp(r'[a-zA-Z0-9!@#$&*~()\-_+={}[\]:;<>,.?/\\|`^% ]'),
          ),
      ],
      style: AppTextStyle.bodyMedium,
      onTap: widget.onTap,
      decoration: InputDecoration(
        prefixText: widget.prefixText,
        prefixStyle: AppTextStyle.bodyMedium.copyWith(color: AppColors.grey),
        alignLabelWithHint: true,
        filled: true,
        fillColor: widget.fillColor ?? AppColors.white,
        hintText: widget.hint,
        hintStyle: AppTextStyle.bodySmall.copyWith(color: AppColors.grey),
        labelText: widget.label,
        labelStyle: AppTextStyle.bodySmall.copyWith(color: AppColors.grey),
        errorStyle: AppTextStyle.bodyXSmall.copyWith(color: AppColors.red),
        prefixIcon: widget.prefixItem,
        contentPadding: widget.contentPadding ??
            (isTablet(context: context) ? 30.padVertical : 18.padVertical) +
                (15.padHorizontal),
        suffixText: widget.suffixText,
        suffixStyle: AppTextStyle.bodyMedium
            .copyWith(color: AppColors.grey, height: 0.05.w),
        suffixIcon: widget.suffixItem != null
            ? CustomInkWell(
                onTap: () {
                  widget.suffixPressed?.call();
                },
                child: widget.suffixItem!)
            : (widget.isPassword)
                ? Padding(
                    padding: isTablet(context: context)
                        ? 20.padHorizontal
                        : 6.padHorizontal,
                    child: IconButton(
                        splashColor: Colors.transparent,
                        onPressed: () => setState(() => isObscure = !isObscure),
                        icon: (isObscure)
                            ? Icon(Icons.visibility_off,
                                size: isTablet(context: context) ? 25.h : 17.h,
                                color: AppColors.grey)
                            : Icon(Icons.visibility,
                                size: isTablet(context: context) ? 25.h : 17.h,
                                color: AppColors.grey)),
                  )
                : null,
        border: OutlineInputBorder(
          borderSide: widget.borderSide ??
              const BorderSide(color: AppColors.secondColor),
          borderRadius: BorderRadius.circular(widget.radius ?? 17.r),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: widget.borderSide ??
              const BorderSide(color: AppColors.secondColor),
          borderRadius: BorderRadius.circular(widget.radius ?? 17.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: widget.borderSide ??
              const BorderSide(color: AppColors.secondColor),
          borderRadius: BorderRadius.circular(widget.radius ?? 17.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: widget.borderSide ??
              const BorderSide(color: AppColors.secondColor),
          borderRadius: BorderRadius.circular(widget.radius ?? 17.r),
        ),
      ),
    );
  }
}
