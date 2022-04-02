import 'package:dartz/dartz.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/features/login/domain/entities/user.dart';
import 'package:mady/features/login/domain/repositories/login_repository.dart';

class LoginUsecase {
  final LoginRepository _repository;

  LoginUsecase(this._repository);

  Future<Either<Failure, User>> authenticate(ApiParam params) async =>
      await _repository.authenticate(params);
}
