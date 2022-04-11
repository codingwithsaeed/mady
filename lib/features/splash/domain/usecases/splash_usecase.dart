import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/features/splash/domain/repositories/splash_repository.dart';

@injectable
class SplashUsecase {
  final SplashRepository repository;

  SplashUsecase(this.repository);

  Future<Either<Failure, bool>> checkIsLoggedIn(String key) async =>
      await repository.checkLogin(key);
}
