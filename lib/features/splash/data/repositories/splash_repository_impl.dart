// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:mady/core/errors/exception.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/network_info.dart';
import 'package:mady/features/splash/data/datasources/splash_datasource.dart';
import 'package:mady/features/splash/domain/repositories/splash_repository.dart';


@Injectable(as: SplashRepository)
class SplashRepositoryImpl implements SplashRepository {
  final SplashDataSource dataSource;
  final NetworkInfo networkInfo;

  const SplashRepositoryImpl({
    required this.dataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, bool>> checkLogin(String key) async {
    try {
      if (!await networkInfo.isConnected)
        return Left(GeneralFailure(message: noInternt));
      return Right(dataSource.checkIsUserLoggedIn(key));
    } on SharedException {
      return const Right(false);
    }
  }
}
