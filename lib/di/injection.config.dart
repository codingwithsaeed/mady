// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../core/network/api_provider.dart' as _i6;
import '../core/network/network_info.dart' as _i5;
import '../features/login/data/datasources/login_remote_datasource.dart' as _i7;
import '../features/login/data/repositories/login_repository_impl.dart' as _i9;
import '../features/login/domain/repositories/login_repository.dart' as _i8;
import '../features/login/domain/usecases/login_usecase.dart' as _i10;
import '../features/login/presentation/bloc/login_bloc.dart' as _i15;
import '../features/offers/data/datasources/offer_remote_datasource.dart'
    as _i11;
import '../features/offers/data/repositories/offer_repository_impl.dart'
    as _i13;
import '../features/offers/domain/repositories/offer_repository.dart' as _i12;
import '../features/offers/domain/usecase/offer_usecase.dart' as _i14;
import '../features/offers/presentation/bloc/offer_bloc.dart' as _i16;
import 'injectable_modules.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModules = _$InjectableModules();
  gh.factory<_i3.Client>(() => injectableModules.client);
  gh.factory<_i4.Connectivity>(() => injectableModules.connectivity);
  gh.factory<_i5.NetworkInfo>(
      () => _i5.NetworkInfoImpl(get<_i4.Connectivity>()));
  gh.lazySingleton<_i6.ApiProvider>(
      () => _i6.ApiProviderImpl(get<_i3.Client>()));
  gh.factory<_i7.LoginRemoteDatasource>(
      () => _i7.LoginRemoteDatasourceImpl(get<_i6.ApiProvider>()));
  gh.factory<_i8.LoginRepository>(() => _i9.LoginRepositoryImpl(
      dataSource: get<_i7.LoginRemoteDatasource>(),
      networkInfo: get<_i5.NetworkInfo>()));
  gh.factory<_i10.LoginUsecase>(
      () => _i10.LoginUsecase(get<_i8.LoginRepository>()));
  gh.factory<_i11.OfferRemoteDataSource>(
      () => _i11.OfferRemoteDataSourceImpl(get<_i6.ApiProvider>()));
  gh.factory<_i12.OfferRepository>(() => _i13.OfferRepositoryImpl(
      remoteDataSource: get<_i11.OfferRemoteDataSource>(),
      networkInfo: get<_i5.NetworkInfo>()));
  gh.factory<_i14.OfferUsecase>(
      () => _i14.OfferUsecase(get<_i12.OfferRepository>()));
  gh.factory<_i15.LoginBloc>(() => _i15.LoginBloc(get<_i10.LoginUsecase>()));
  gh.factory<_i16.OfferBloc>(() => _i16.OfferBloc(get<_i14.OfferUsecase>()));
  return get;
}

class _$InjectableModules extends _i17.InjectableModules {}
