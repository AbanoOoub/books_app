import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../../features/book_list/presentation/screens/book_list_screen.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: BookListRoute.page, initial: true),
      ];
}
