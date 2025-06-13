// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'config/routes/app_router.dart' as _i924;
import 'core/api/api_requests.dart' as _i959;
import 'core/api/interceptors/app_interceptors.dart' as _i661;
import 'core/api/interfaces/i_api_requests.dart' as _i924;
import 'core/helpers/pretty_logs.dart' as _i562;
import 'core/network/netwok_info.dart' as _i753;
import 'core/services/sql_database_service.dart' as _i548;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i661.AppInterceptors>(() => _i661.AppInterceptors());
  gh.singleton<_i924.AppRouter>(() => _i924.AppRouter());
  gh.lazySingleton<_i562.PrettyLogs>(() => _i562.PrettyLogs());
  gh.lazySingleton<_i548.SqlDatabaseService>(() => _i548.SqlDatabaseService());
  gh.factory<_i924.IApiRequests>(() => _i959.ApiRequests());
  gh.factory<_i753.INetworkInfo>(() => _i753.NetworkInfo());
  return getIt;
}
