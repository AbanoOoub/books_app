import 'package:books_app/core/extensions/padding_extensions.dart';
import 'package:books_app/core/utils/app_text_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/custom_network_image.dart';
import '../../../../core/utils/shared_widgets/custom_text_widget.dart';
import '../../../../gen/locale_keys.g.dart';
import '../../domain/entities/book_entity.dart';

class BookItem extends StatelessWidget {
  const BookItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.authors,
      required this.summaries,
      required this.downloadsCount});

  final String imageUrl;
  final String title;
  final List<PersonEntity> authors;
  final List<String> summaries;
  final int downloadsCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 10.padAll,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.lightGrey),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        children: [
          Row(children: [
            CustomNetworkImage(
              height: 120.h,
              width: 100.w,
              imageUrl: imageUrl,
            ),
            10.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomTextWidget(
                    text: title,
                    maxLines: 2,
                    textStyle: AppTextStyle.headingSmall,
                  ),
                  10.verticalSpace,
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: authors
                        .map(
                          (e) => CustomTextWidget(
                            text: e.fullName,
                            maxLines: 2,
                          ),
                        )
                        .toList(),
                  ),
                  10.verticalSpace,
                  CustomTextWidget(
                    text:
                        "${LocaleKeys.downloaded.tr()} ${downloadsCount.toString()} ${LocaleKeys.time.plural(
                      downloadsCount,
                    )}",
                    maxLines: 2,
                    textStyle: AppTextStyle.bodySmall,
                    textColor: AppColors.grey,
                  ),
                ],
              ),
            ),
          ]),
          10.verticalSpace,
          ReadMoreText(
            "${summaries.map((e) => e.toString())}",
            textAlign: TextAlign.start,
            style: AppTextStyle.bodySmall,
            moreStyle:
                AppTextStyle.bodySmall.copyWith(color: AppColors.mainColor),
            lessStyle:
                AppTextStyle.bodySmall.copyWith(color: AppColors.mainColor),
            trimMode: TrimMode.Line,
            trimLines: 3,
            trimCollapsedText: LocaleKeys.showMore.tr(),
            trimExpandedText: " ${LocaleKeys.showLess.tr()}",
          )
        ],
      ),
    );
  }
}
