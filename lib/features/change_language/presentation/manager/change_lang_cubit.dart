import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/app_locales.dart';

part 'change_lang_state.dart';

part 'change_lang_cubit.freezed.dart';

@injectable
class ChangeLangCubit extends Cubit<ChangeLangState> {
  ChangeLangCubit()
      : super(ChangeLangState(
          currStatus: ChangeLangStateStatus.initial(),
        ));

  void init({required BuildContext context}) {
    emit(state.copyWith(currentLangCode: context.locale.languageCode));
  }

  void toggleLanguage(
      {required BuildContext context, required String newLangCode}) {
    if (state.currentLangCode != newLangCode) {
      try {
        context.setLocale(Locale(newLangCode));
        emit(state.copyWith(
          currStatus: ChangeLangStateStatus.changeLangSuccess(),
          currentLangCode: newLangCode,
        ));
      } catch (e) {
        emit(state.copyWith(
            currStatus: ChangeLangStateStatus.changeLangError()));
      }
    }
  }
}
