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
import '../features/login/presentation/bloc/login_bloc.dart' as _i35;
import '../features/near_offers/data/datasources/near_offers_remote_datasource.dart'
    as _i14;
import '../features/near_offers/data/repositories/near_offers_repository_impl.dart'
    as _i16;
import '../features/near_offers/domain/repositories/near_offers_repository.dart'
    as _i15;
import '../features/near_offers/domain/usecases/near_offers_usecase.dart'
    as _i17;
import '../features/near_offers/presentation/cubit/near_offers_cubit.dart'
    as _i36;
import '../features/offers/data/datasources/offer_remote_datasource.dart'
    as _i18;
import '../features/offers/data/repositories/offer_repository_impl.dart'
    as _i20;
import '../features/offers/domain/repositories/offer_repository.dart' as _i19;
import '../features/offers/domain/usecase/offer_usecase.dart' as _i21;
import '../features/offers/presentation/bloc/offer_bloc.dart' as _i37;
import '../features/profile/presentation/cubit/profile_cubit.dart' as _i38;
import '../features/reserve_offer/data/datasources/reserve_offer_remote_datasource.dart'
    as _i22;
import '../features/reserve_offer/data/repositories/reserve_offer_repository_impl.dart'
    as _i24;
import '../features/reserve_offer/domain/repositories/reserve_offer_repository.dart'
    as _i23;
import '../features/reserve_offer/domain/usecases/reserve_offer_usecase.dart'
    as _i25;
import '../features/reserve_offer/presentation/bloc/reserve_offer_bloc.dart'
    as _i39;
import '../features/splash/data/datasources/splash_datasource.dart' as _i26;
import '../features/splash/data/repositories/splash_repository_impl.dart'
    as _i28;
import '../features/splash/domain/repositories/splash_repository.dart' as _i27;
import '../features/splash/domain/usecases/splash_usecase.dart' as _i29;
import '../features/splash/presentation/cubit/splash_cubit.dart' as _i40;
import '../features/user/data/datasources/user_local_datasource.dart' as _i30;
import '../features/user/data/datasources/user_remote_datasource.dart' as _i31;
import '../features/user/data/repositories/user_repository_impl.dart' as _i33;
import '../features/user/domain/repositories/user_repository.dart' as _i32;
import '../features/user/domain/usecases/user_usecase.dart' as _i34;
import 'injectable_modules.dart'
    as _i41; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i14.NearOffersRemoteDataSource>(
      () => _i14.NearOffersRemoteDataSourceImpl(get<_i7.ApiProvider>()));
  gh.factory<_i15.NearOffersRepository>(() => _i16.NearOfferRepositoryImpl(
      remoteDataSource: get<_i14.NearOffersRemoteDataSource>(),
      networkInfo: get<_i5.NetworkInfo>()));
  gh.factory<_i17.NearOffersUsecase>(
      () => _i17.NearOffersUsecase(get<_i15.NearOffersRepository>()));
  gh.factory<_i18.OfferRemoteDataSource>(
      () => _i18.OfferRemoteDataSourceImpl(get<_i7.ApiProvider>()));
  gh.factory<_i19.OfferRepository>(() => _i20.OfferRepositoryImpl(
      remoteDataSource: get<_i18.OfferRemoteDataSource>(),
      networkInfo: get<_i5.NetworkInfo>()));
  gh.factory<_i21.OfferUsecase>(
      () => _i21.OfferUsecase(get<_i19.OfferRepository>()));
  gh.factory<_i22.ReserveOfferRemoteDataSource>(
      () => _i22.ReserveOfferRemoteDataSourceImpl(get<_i7.ApiProvider>()));
  gh.factory<_i23.ReserveOfferRepository>(() => _i24.ReserveOfferRepositoryImpl(
      remoteDataSource: get<_i22.ReserveOfferRemoteDataSource>(),
      networkInfo: get<_i5.NetworkInfo>()));
  gh.factory<_i25.ReserveOfferUsecase>(
      () => _i25.ReserveOfferUsecase(get<_i23.ReserveOfferRepository>()));
  gh.factory<_i26.SplashDataSource>(
      () => _i26.SplashDataSourceImpl(get<_i8.CacheProvider>()));
  gh.factory<_i27.SplashRepository>(() => _i28.SplashRepositoryImpl(
      dataSource: get<_i26.SplashDataSource>(),
      networkInfo: get<_i5.NetworkInfo>()));
  gh.factory<_i29.SplashUsecase>(
      () => _i29.SplashUsecase(get<_i27.SplashRepository>()));
  gh.factory<_i30.UserLocalDatasource>(
      () => _i30.UserLocalDatasourceImpl(get<_i8.CacheProvider>()));
  gh.factory<_i31.UserRemoteDatasource>(
      () => _i31.UserRemoteDatasourceImpl(get<_i7.ApiProvider>()));
  gh.factory<_i32.UserRepository>(() => _i33.UserRepositoryImpl(
      get<_i31.UserRemoteDatasource>(),
      get<_i30.UserLocalDatasource>(),
      get<_i5.NetworkInfo>()));
  gh.factory<_i34.UserUsecase>(
      () => _i34.UserUsecase(get<_i32.UserRepository>()));
  gh.factory<_i35.LoginBloc>(() => _i35.LoginBloc(get<_i13.LoginUsecase>()));
  gh.factory<_i36.NearOffersCubit>(() => _i36.NearOffersCubit(
      offerUsecase: get<_i17.NearOffersUsecase>(),
      userUsecase: get<_i34.UserUsecase>()));
  gh.factory<_i37.OfferBloc>(() => _i37.OfferBloc(
      offerUsecase: get<_i21.OfferUsecase>(),
      userUsecase: get<_i34.UserUsecase>()));
  gh.factory<_i38.ProfileCubit>(
      () => _i38.ProfileCubit(get<_i34.UserUsecase>()));
  gh.factory<_i39.ReserveOfferBloc>(() => _i39.ReserveOfferBloc(
      reserveUsecase: get<_i25.ReserveOfferUsecase>(),
      userUsecase: get<_i34.UserUsecase>()));
  gh.factory<_i40.SplashCubit>(
      () => _i40.SplashCubit(get<_i29.SplashUsecase>()));
  return get;
}

class _$InjectableModules extends _i41.InjectableModules {}
