import 'package:books_app/core/extensions/padding_extensions.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_colors.dart';
import '../../app_text_style.dart';
import 'model/drop_down_model.dart';

class MultiSelectionDropDown extends StatelessWidget {
  const MultiSelectionDropDown({
    super.key,
    required this.items,
    required this.onChanged,
    required this.selectedItems,
    required this.itemBuilder,
    required this.emptyBuilder,
    required this.dropdownBuilder,
  });

  final List<DropDownModel> items;
  final Function(List<DropDownModel>) onChanged;
  final List<DropDownModel> selectedItems;
  final Widget Function(BuildContext, DropDownModel, bool, bool) itemBuilder;
  final Widget Function(BuildContext, List<DropDownModel>) dropdownBuilder;
  final Widget Function(BuildContext, String) emptyBuilder;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: AppColors.mainColor,
            onPrimary: AppColors.white,
            secondary: AppColors.grey,
            onSecondary: AppColors.grey,
            error: AppColors.red,
            onError: AppColors.red,
            surface: AppColors.white,
            onSurface: AppColors.grey),
        elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(AppColors.bgColor))),
      ),
      child: DropdownSearch<DropDownModel>.multiSelection(
        items: (filter, loadProps) => items,
        onChanged: onChanged,
        compareFn: (item1, item2) {
          return item1.name == item2.name;
        },
        filterFn: (item, filter) {
          return item.name.toLowerCase().contains(filter.toLowerCase());
        },
        selectedItems: selectedItems,
        autoValidateMode: AutovalidateMode.onUserInteraction,
        validator: (employees) {
          if (employees == null || employees.isEmpty) {
            return 'field is required';
          }
          return null;
        },

        /// to design dropdown
        decoratorProps: DropDownDecoratorProps(
          decoration: InputDecoration(
            contentPadding: 15.padAll,
            filled: true,
            fillColor: AppColors.white,
            hintText: 'hint',
            hintStyle: AppTextStyle.bodySmall(context),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.grey),
              borderRadius: BorderRadius.circular(18.r),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.grey),
              borderRadius: BorderRadius.circular(18.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.mainColor),
              borderRadius: BorderRadius.circular(18.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.grey),
              borderRadius: BorderRadius.circular(18.r),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.red),
              borderRadius: BorderRadius.circular(18.r),
            ),
          ),
        ),

        /// to design dropdown menu
        popupProps: PopupPropsMultiSelection.menu(
          showSearchBox: true,
          showSelectedItems: true,
          menuProps: MenuProps(
            borderRadius: BorderRadius.circular(10.r),
            backgroundColor: AppColors.white,
          ),
          emptyBuilder: emptyBuilder,
          listViewProps: ListViewProps(
            // controller: here controller of scroll
            padding: 10.padAll,
            itemExtent: 50.w,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          ),
          searchFieldProps: const TextFieldProps(
            keyboardType: TextInputType.text,
          ),
          loadingBuilder: (context, searchEntry) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          },
          itemBuilder: itemBuilder,
        ),

        ///to design selected items
        dropdownBuilder: dropdownBuilder,
      ),
    );
  }
}
