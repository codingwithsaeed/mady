// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/exception.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/core/network/network_info.dart';
import 'package:mady/features/offers/data/datasources/offer_remote_datasource.dart';
import 'package:mady/features/offers/domain/entities/category_offers/category_offers.dart';
import 'package:mady/features/offers/domain/repositories/offer_repository.dart';

@Injectable(as: OfferRepository)
class OfferRepositoryImpl extends OfferRepository {
  final OfferRemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  OfferRepositoryImpl({
    required OfferRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remoteDataSource = remoteDataSource,
        _networkInfo = networkInfo;

  @override
  Future<Either<Failure, List<CategoryOffers>>> getOffers(
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
}
