import 'package:auto_route/auto_route.dart';
import 'package:books_app/core/utils/shared_widgets/custom_text_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/routes/app_router.dart';
import '../../../../core/constants/app_locales.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../gen/locale_keys.g.dart';
import '../../../../init_main.dart';
import '../manager/change_lang_cubit.dart';

class LanguageSelectionBottomSheet extends StatelessWidget {
  const LanguageSelectionBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (blocContext) => getIt<ChangeLangCubit>()..init(context: context),
      child: BlocConsumer<ChangeLangCubit, ChangeLangState>(
        listener: (context, state) {
          if (state.currStatus is ChangeLangSuccess) {
            context.router.replaceAll([
              SplashRoute(),
            ], updateExistingRoutes: false);
          }
        },
        builder: (context, state) {
          return StatefulBuilder(
            builder: (context, setState) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 15.h),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(12.r)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        CustomTextWidget(
                          text: LocaleKeys.languages.tr(),
                        ),
                        50.horizontalSpace,
                      ],
                    ),
                    Column(
                      children: [
                        ListTile(
                          title: CustomTextWidget(
                            text: LocaleKeys.english.tr(),
                          ),
                          onTap: () {
                            context.read<ChangeLangCubit>().toggleLanguage(
                                context: context,
                                newLangCode: AppLocales().localeEN);
                          },
                          trailing: Radio(
                            value: AppLocales().localeEN,
                            groupValue: state.currentLangCode,
                            onChanged: (value) {
                              context.read<ChangeLangCubit>().toggleLanguage(
                                  context: context,
                                  newLangCode: value ?? AppLocales().localeEN);
                            },
                          ),
                        ),
                        Divider(color: AppColors.grey),
                        ListTile(
                          title: CustomTextWidget(
                            text: LocaleKeys.arabic.tr(),
                          ),
                          onTap: () {
                            context.read<ChangeLangCubit>().toggleLanguage(
                                context: context,
                                newLangCode: AppLocales().localeAr);
                          },
                          trailing: Radio(
                            value: AppLocales().localeAr,
                            groupValue: state.currentLangCode,
                            onChanged: (value) {
                              context.read<ChangeLangCubit>().toggleLanguage(
                                  context: context,
                                  newLangCode: value ?? AppLocales().localeAr);
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
