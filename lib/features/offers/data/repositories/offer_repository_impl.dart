// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/exception.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/core/network/network_info.dart';
import 'package:mady/features/login/domain/entities/user.dart';
import 'package:mady/features/offers/data/datasources/offer_local_datasource.dart';
import 'package:mady/features/offers/domain/entities/category_offers/category_offers.dart';

import '../../domain/repositories/offer_repository.dart';
import '../datasources/offer_remote_datasource.dart';

@Injectable(as: OfferRepository)
class OfferRepositoryImpl extends OfferRepository {
  final OfferRemoteDataSource _remoteDataSource;
  final OfferLocalDataSource _localDataSource;
  final NetworkInfo _networkInfo;

  OfferRepositoryImpl({
    required OfferRemoteDataSource remoteDataSource,
    required OfferLocalDataSource localDataSource,
    required NetworkInfo networkInfo,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource,
        _networkInfo = networkInfo;

  @override
  Future<Either<Failure, List<CategoryOffers>>> getAllOffers(
      ApiParam params) async {
    if (!(await _networkInfo.isConnected))
      return Left(GeneralFailure(message: noInternt));
    try {
      final result = await _remoteDataSource.getOffers(params.value);
      return Right(result.offers);
    } on ServerException catch (e) {
      return Left(GeneralFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, bool>> reserveOffer(ApiParam params) async {
    if (!(await _networkInfo.isConnected))
      return Left(GeneralFailure(message: noInternt));
    try {
      final result = await _remoteDataSource.reserveOffer(params.value);
      switch (result) {
        case 1:
          return const Right(true);
        case 0:
          return Left(
              GeneralFailure(message: 'خطا! ممکن است آفر رزرو شده باشد'));
        case -1:
          return Left(GeneralFailure(message: 'بسته یافت نشد!'));
        case -2:
          return Left(GeneralFailure(message: 'موجودی بسته کافی نیست!'));
        default:
          return Left(GeneralFailure(message: 'خطا در رزرو بسته'));
      }
    } on ServerException catch (e) {
      return Left(GeneralFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, User>> getUser(String key) async {
    final result = await _localDataSource.getUser(key);
    if (result == null) return Left(GeneralFailure(message: 'کاربر پیدا نشد'));
    return Right(result);
  }
}
