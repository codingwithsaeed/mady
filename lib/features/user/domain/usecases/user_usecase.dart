import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/features/user/domain/entities/user.dart';
import 'package:mady/features/user/domain/repositories/user_repository.dart';

@injectable
class UserUsecase {
  final UserRepository _repository;

  const UserUsecase(this._repository);

  Future<Either<Failure, User>> getUser(String key) async =>
      await _repository.getUser(key);

  Future<Either<Failure, bool>> saveUser(String key, User user) async =>
      await _repository.saveUser(key, user);

  Future<Either<Failure, bool>> updateLocationAndSave(
          ApiParam params, String key, User user) async =>
      await _repository.updateLocationAndSave(params, key, user);
}
