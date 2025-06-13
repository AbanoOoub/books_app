import 'package:auto_route/auto_route.dart';
import 'package:books_app/core/extensions/padding_extensions.dart';
import 'package:books_app/core/utils/app_text_style.dart';
import 'package:books_app/core/utils/shared_widgets/custom_app_bar.dart';
import 'package:books_app/core/utils/shared_widgets/custom_text_form_field.dart';
import 'package:books_app/core/utils/shared_widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/custom_network_image.dart';

@RoutePage()
class BookListScreen extends StatelessWidget {
  const BookListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Gutenberg Books',
        isHaveBackButton: false,
        centerTitle: true,
        titleTextStyle: AppTextStyle.headingXLarge,
      ),
      body: Padding(
        padding: 15.padHorizontal,
        child: Column(
          children: [
            CustomTextFormField(
              prefixItem: Icon(Icons.search, color: AppColors.textColor),
              hint: 'Search Books',
              borderSide: BorderSide.none,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Row(children: [
                    CustomNetworkImage(
                      height: 120.h,
                      width: 100.w,
                      imageUrl: '',
                    ),
                    10.horizontalSpace,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextWidget(
                            text: 'text' * 3,
                            maxLines: 2,
                          ),
                          CustomTextWidget(
                            text: 'text' * 8,
                            maxLines: 2,
                          ),
                          CustomTextWidget(
                            text: 'text',
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                separatorBuilder: (context, index) => 10.verticalSpace,
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
