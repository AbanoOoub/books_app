import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'config/routes/app_router.dart';
import 'config/themes/app_theme.dart';
import 'init_main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);

    return MaterialApp.router(
      theme: appTheme(),
      debugShowCheckedModeBanner: false,
      routerConfig: getIt<AppRouter>().config(),
      builder: EasyLoading.init(),
    );
  }
}
