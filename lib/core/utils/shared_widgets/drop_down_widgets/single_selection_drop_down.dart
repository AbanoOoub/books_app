import 'package:books_app/core/extensions/padding_extensions.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app_colors.dart';
import '../../app_text_style.dart';
import '../custom_text_widget.dart';
import 'model/drop_down_model.dart';

class SingleSelectionDropDown extends StatelessWidget {
  const SingleSelectionDropDown({
    super.key,
    required this.items,
    required this.onChanged,
    required this.hint,
    required this.selectedItem,
    this.showSearchBox = false,
  });

  final List<DropDownModel> items;
  final Function(DropDownModel?) onChanged;
  final DropDownModel? selectedItem;
  final String hint;
  final bool showSearchBox;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<DropDownModel>(
      items: (filter, loadProps) => items,
      onChanged: onChanged,
      selectedItem: selectedItem,
      autoValidateMode: AutovalidateMode.disabled,
      compareFn: (item1, item2) {
        return item1.name == item2.name;
      },

      filterFn: (item, filter) {
        return item.name.toLowerCase().contains(filter.toLowerCase());
      },

      /// to design dropdown
      decoratorProps: DropDownDecoratorProps(
        decoration: InputDecoration(
          contentPadding: 20.padAll,
          filled: true,
          fillColor: AppColors.white,
          hintStyle: AppTextStyle.bodySmall,
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
        ),
        baseStyle: AppTextStyle.bodySmall,
      ),

      /// to design dropdown menu
      popupProps: PopupPropsMultiSelection.menu(
        showSelectedItems: true,
        showSearchBox: showSearchBox,
        fit: FlexFit.loose,
        menuProps: MenuProps(
          borderRadius: BorderRadius.circular(10.r),
          backgroundColor: AppColors.white,
        ),
        listViewProps: ListViewProps(
          padding: 10.padHorizontal,
          itemExtent: 50.w,
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        ),
        itemBuilder: (context, item, isDisabled, isSelected) {
          return Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    CustomTextWidget(
                        text: item.name, textStyle: AppTextStyle.bodySmall),
                    10.horizontalSpace,
                    Expanded(
                      child: CustomTextWidget(
                          text: item.description,
                          maxLines: 2,
                          textStyle: AppTextStyle.bodyXSmall),
                    )
                  ],
                ),
              ),
              const Divider(),
            ],
          );
        },
      ),

      /// to design selected item
      dropdownBuilder: (context, selectedItem) {
        if (selectedItem != null) {
          return CustomTextWidget(
              text: selectedItem.name, textStyle: AppTextStyle.bodySmall);
        }
        return CustomTextWidget(text: hint);
      },
    );
  }
}
