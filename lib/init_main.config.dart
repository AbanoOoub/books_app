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
import 'features/book_list/data/data_sources/book_list_remote_data_source.dart'
    as _i903;
import 'features/book_list/data/repositories/book_list_repo_impl.dart' as _i436;
import 'features/book_list/domain/repositories/book_list_repo.dart' as _i3;
import 'features/book_list/domain/use_cases/get_book_list.dart' as _i306;
import 'features/book_list/presentation/manager/book_list_cubit.dart' as _i854;
import 'features/change_language/presentation/manager/change_lang_cubit.dart'
    as _i816;

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
  gh.factory<_i816.ChangeLangCubit>(() => _i816.ChangeLangCubit());
  gh.singleton<_i661.AppInterceptors>(() => _i661.AppInterceptors());
  gh.singleton<_i924.AppRouter>(() => _i924.AppRouter());
  gh.lazySingleton<_i562.PrettyLogs>(() => _i562.PrettyLogs());
  gh.lazySingleton<_i548.SqlDatabaseService>(() => _i548.SqlDatabaseService());
  gh.factory<_i924.IApiRequests>(() => _i959.ApiRequests());
  gh.factory<_i903.BookListRemoteDataSource>(() =>
      _i903.BookListRemoteDataSourceImpl(
          apiRequests: gh<_i924.IApiRequests>()));
  gh.factory<_i753.INetworkInfo>(() => _i753.NetworkInfo());
  gh.factory<_i3.BookListRepo>(
      () => _i436.BookListRepoImpl(gh<_i903.BookListRemoteDataSource>()));
  gh.lazySingleton<_i306.GetBookListUseCase>(
      () => _i306.GetBookListUseCase(gh<_i3.BookListRepo>()));
  gh.factory<_i854.BookListCubit>(
      () => _i854.BookListCubit(gh<_i306.GetBookListUseCase>()));
  return getIt;
}
