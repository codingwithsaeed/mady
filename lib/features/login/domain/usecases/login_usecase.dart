import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/features/login/domain/repositories/login_repository.dart';
import 'package:mady/features/user/domain/entities/user.dart';

@injectable
class LoginUsecase {
  final LoginRepository _repository;

  LoginUsecase(this._repository);

  Future<Either<Failure, User>> call(ApiParam params) async =>
      await _repository.call(params);
}
