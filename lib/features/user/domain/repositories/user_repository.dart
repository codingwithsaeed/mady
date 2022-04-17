import 'package:dartz/dartz.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/features/user/domain/entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> getUser(String key);
  Future<Either<Failure, bool>> saveUser(String key, User user);
  Future<Either<Failure, bool>> updateLocationAndSave(
      ApiParam params, String key, User user);
}
