import 'package:dartz/dartz.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/features/login/domain/entities/user.dart';

abstract class LoginRepository {
  Future<Either<Failure, User>> authenticate(ApiParam params);
}
