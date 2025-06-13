import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppLocales {
  const AppLocales();

  String get localeAr => 'ar';
  String get localeEN => 'en';
  String get localeDefault => localeEN;
}

extension LocaleContext on BuildContext {
  get isEnglish => locale.languageCode == const AppLocales().localeEN;
  get isArabic => locale.languageCode == const AppLocales().localeAr;
}
