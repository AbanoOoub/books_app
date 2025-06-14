import 'package:books_app/core/utils/app_screen_size.dart';
import 'package:flutter/material.dart';

class AdaptiveLayoutBuilder extends StatelessWidget {
  final WidgetBuilder mobileBuilder, tabletBuilder, desktopBuilder;

  const AdaptiveLayoutBuilder({
    super.key,
    required this.mobileBuilder,
    required this.tabletBuilder,
    required this.desktopBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        if (width < AppScreenSize.tablet) {
          return mobileBuilder(context);
        } else if (width < AppScreenSize.desktop) {
          return tabletBuilder(context);
        } else {
          return desktopBuilder(context);
        }
      },
    );
  }
}
