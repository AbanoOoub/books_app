import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';

class AppConstants {
  static Widget loading = Assets.animations.loading.lottie(
    repeat: true,
    width: 100.w,
    height: 100.w,
    fit: BoxFit.contain,
  );
}
