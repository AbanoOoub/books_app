import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'config/routes/app_router.dart';
import 'core/constants/app_locales.dart';
import 'core/observers/bloc_observer.dart';
import 'core/utils/app_colors.dart';
import 'init_main.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
void configureDependencies() => $initGetIt(getIt);

void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.light
    ..indicatorSize = 20
    ..radius = 10
    ..progressColor = AppColors.mainColor
    ..backgroundColor = Colors.transparent
    ..textColor = Colors.black
    ..indicatorColor = AppColors.mainColor
    ..userInteractions = true
    ..dismissOnTap = false;
}

Future<Widget> initMain(Widget child) async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  await ScreenUtil.ensureScreenSize();
  Bloc.observer = MyBlocObserver();
  await EasyLocalization.ensureInitialized();
  await initializeDateFormatting();
  // await SqlDatabaseService.init();

  configLoading();

  return EasyLocalization(
    supportedLocales: [
      Locale(const AppLocales().localeAr),
      Locale(const AppLocales().localeEN),
    ],
    path: 'assets/translations',
    startLocale: Locale(const AppLocales().localeEN),
    fallbackLocale: Locale(const AppLocales().localeEN),
    saveLocale: true,
    useOnlyLangCode: true,
    child: ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      enableScaleWH: () => false,
      enableScaleText: () => false,
      child: child,
    ),
  );
}

bool isTablet({BuildContext? context}) {
  final currContext =
      getIt<AppRouter>().navigatorKey.currentState?.context ?? context;
  if (MediaQuery.of(currContext!).size.shortestSide > 600) {
    return true;
  }
  return false;
}
