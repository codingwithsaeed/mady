// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/exception.dart';
import 'package:mady/core/network/network_info.dart';
import 'package:mady/features/reserve_offer/data/datasources/reserve_offer_remote_datasource.dart';
import 'package:mady/features/reserve_offer/domain/entities/offer_details.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:mady/features/reserve_offer/domain/repositories/reserve_offer_repository.dart';

@Injectable(as: ReserveOfferRepository)
class ReserveOfferRepositoryImpl implements ReserveOfferRepository {
  final ReserveOfferRemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  ReserveOfferRepositoryImpl({
    required ReserveOfferRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remoteDataSource = remoteDataSource,
        _networkInfo = networkInfo;

  @override
  Future<Either<Failure, OfferDetails>> getDetails(ApiParam params) async {
    if (!(await _networkInfo.isConnected))
      return Left(GeneralFailure(message: noInternt));
    try {
      final result = await _remoteDataSource.getOfferDetails(params.value);
      return Right(result);
    } on ServerException catch (e) {
      return Left(GeneralFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, bool>> reserve(ApiParam params) async {
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

}
