// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/exception.dart';
import 'package:mady/core/network/network_info.dart';
import 'package:mady/core/utils/consts.dart';
import 'package:mady/features/login/data/datasources/login_local_datasource.dart';
import 'package:mady/features/login/data/datasources/login_remote_datasource.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:mady/features/login/domain/repositories/login_repository.dart';
import 'package:mady/features/user/domain/entities/user.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDatasource _remoteDatasource;
  final LoginLocalDatasource _localDatasource;
  final NetworkInfo _networkInfo;

  LoginRepositoryImpl({
    required LoginRemoteDatasource remote,
    required LoginLocalDatasource local,
    required NetworkInfo networkInfo,
  })  : _remoteDatasource = remote,
        _localDatasource = local,
        _networkInfo = networkInfo;

  @override
  Future<Either<Failure, User>> call(ApiParam params) async {
    if (!await _networkInfo.isConnected)
      return Left(GeneralFailure(message: noInternt));
    try {
      final result = await _remoteDatasource.call(params.value);
      _localDatasource.saveUser(userKey, result.toJson());
      return Right(result);
    } on ServerException catch (e) {
      return Left(GeneralFailure(message: e.message));
    }
  }
}
