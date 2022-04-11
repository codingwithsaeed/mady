// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../core/cache/cache_provider.dart' as _i8;
import '../core/network/api_provider.dart' as _i7;
import '../core/network/network_info.dart' as _i5;
import '../features/login/data/datasources/login_local_datasource.dart' as _i9;
import '../features/login/data/datasources/login_remote_datasource.dart'
    as _i10;
import '../features/login/data/repositories/login_repository_impl.dart' as _i12;
import '../features/login/domain/repositories/login_repository.dart' as _i11;
import '../features/login/domain/usecases/login_usecase.dart' as _i13;
import '../features/login/presentation/bloc/login_bloc.dart' as _i22;
import '../features/offers/data/datasources/offer_remote_datasource.dart'
    as _i14;
import '../features/offers/data/repositories/offer_repository_impl.dart'
    as _i16;
import '../features/offers/domain/repositories/offer_repository.dart' as _i15;
import '../features/offers/domain/usecase/offer_usecase.dart' as _i17;
import '../features/offers/presentation/bloc/offer_bloc.dart' as _i23;
import '../features/splash/data/datasources/splash_datasource.dart' as _i18;
import '../features/splash/data/repositories/splash_repository_impl.dart'
    as _i20;
import '../features/splash/domain/repositories/splash_repository.dart' as _i19;
import '../features/splash/domain/usecases/splash_usecase.dart' as _i21;
import '../features/splash/presentation/cubit/splash_cubit.dart' as _i24;
import 'injectable_modules.dart'
    as _i25; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModules = _$InjectableModules();
  gh.factory<_i3.Client>(() => injectableModules.client);
  gh.factory<_i4.Connectivity>(() => injectableModules.connectivity);
  gh.factory<_i5.NetworkInfo>(
      () => _i5.NetworkInfoImpl(get<_i4.Connectivity>()));
  await gh.factoryAsync<_i6.SharedPreferences>(() => injectableModules.prefs,
      preResolve: true);
  gh.lazySingleton<_i7.ApiProvider>(
      () => _i7.ApiProviderImpl(get<_i3.Client>()));
  gh.factory<_i8.CacheProvider>(
      () => _i8.CacheProviderImpl(get<_i6.SharedPreferences>()));
  gh.factory<_i9.LoginLocalDatasource>(
      () => _i9.LoginLocalDatasourceImpl(get<_i8.CacheProvider>()));
  gh.factory<_i10.LoginRemoteDatasource>(
      () => _i10.LoginRemoteDatasourceImpl(get<_i7.ApiProvider>()));
  gh.factory<_i11.LoginRepository>(() => _i12.LoginRepositoryImpl(
      remote: get<_i10.LoginRemoteDatasource>(),
      local: get<_i9.LoginLocalDatasource>(),
      networkInfo: get<_i5.NetworkInfo>()));
  gh.factory<_i13.LoginUsecase>(
      () => _i13.LoginUsecase(get<_i11.LoginRepository>()));
  gh.factory<_i14.OfferRemoteDataSource>(
      () => _i14.OfferRemoteDataSourceImpl(get<_i7.ApiProvider>()));
  gh.factory<_i15.OfferRepository>(() => _i16.OfferRepositoryImpl(
      remoteDataSource: get<_i14.OfferRemoteDataSource>(),
      networkInfo: get<_i5.NetworkInfo>()));
  gh.factory<_i17.OfferUsecase>(
      () => _i17.OfferUsecase(get<_i15.OfferRepository>()));
  gh.factory<_i18.SplashDataSource>(
      () => _i18.SplashDataSourceImpl(get<_i8.CacheProvider>()));
  gh.factory<_i19.SplashRepository>(() => _i20.SplashRepositoryImpl(
      dataSource: get<_i18.SplashDataSource>(),
      networkInfo: get<_i5.NetworkInfo>()));
  gh.factory<_i21.SplashUsecase>(
      () => _i21.SplashUsecase(get<_i19.SplashRepository>()));
  gh.factory<_i22.LoginBloc>(() => _i22.LoginBloc(get<_i13.LoginUsecase>()));
  gh.factory<_i23.OfferBloc>(() => _i23.OfferBloc(get<_i17.OfferUsecase>()));
  gh.factory<_i24.SplashCubit>(
      () => _i24.SplashCubit(get<_i21.SplashUsecase>()));
  return get;
}

class _$InjectableModules extends _i25.InjectableModules {}
