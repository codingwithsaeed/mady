// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/exception.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/core/network/network_info.dart';
import 'package:mady/features/user/data/datasources/user_local_datasource.dart';
import 'package:mady/features/user/data/datasources/user_remote_datasource.dart';
import 'package:mady/features/user/domain/entities/user.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:mady/features/user/domain/repositories/user_repository.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserRemoteDatasource _remoteDatasource;
  final UserLocalDatasource _localDatasource;
  final NetworkInfo _networkInfo;

  UserRepositoryImpl(
      this._remoteDatasource, this._localDatasource, this._networkInfo);

  @override
  Future<Either<Failure, User>> getUser(String key) async {
    final result = await _localDatasource.getUser(key);
    if (result == null) return Left(GeneralFailure(message: 'کاربر پیدا نشد'));
    return Right(result);
  }

  @override
  Future<Either<Failure, bool>> saveUser(String key, User user) async {
    final result = await _localDatasource.saveUser(key, user);
    if (result) return Right(result);
    return Left(GeneralFailure(message: 'کاربر ذخیره نشد'));
  }

  @override
  Future<Either<Failure, bool>> updateLocationAndSave(
    ApiParam params,
    String key,
    User user,
  ) async {
    if (!(await _networkInfo.isConnected))
      return Left(GeneralFailure(message: noInternt));
    try {
      final result = await _remoteDatasource.updateLocation(params.value);
      if (result) {
        final result2 = await _localDatasource.saveUser(
            key,
            user.copyWith(
              lat: params.value['lat'],
              lng: params.value['lng'],
            ));
        if (result2) return Right(result2);
        return Left(GeneralFailure(message: 'موقعیت جدید کاربر ذخیره نشد'));
      }
      return Left(GeneralFailure(message: 'موقعیت کاربر به روز رسانی نشد'));
    } on ServerException catch (e) {
      return Left(GeneralFailure(message: e.message));
    }
  }
}
