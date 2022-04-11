import 'package:dartz/dartz.dart';
import 'package:mady/core/errors/failure.dart';

abstract class SplashRepository {
  Future<Either<Failure, bool>> checkLogin(String key);
}
