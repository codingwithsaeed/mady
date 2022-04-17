// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/exception.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/core/network/network_info.dart';
import 'package:mady/features/near_offers/data/datasources/near_offers_remote_datasource.dart';
import 'package:mady/features/near_offers/domain/repositories/near_offers_repository.dart';
import 'package:mady/features/offers/domain/entities/offer/offer.dart';

@Injectable(as: NearOffersRepository)
class NearOfferRepositoryImpl extends NearOffersRepository {
  final NearOffersRemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  NearOfferRepositoryImpl({
    required NearOffersRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remoteDataSource = remoteDataSource,
        _networkInfo = networkInfo;

  @override
  Future<Either<Failure, List<Offer>>> getOffers(ApiParam params) async {
    if (!(await _networkInfo.isConnected))
      return Left(GeneralFailure(message: noInternt));
    try {
      final result = await _remoteDataSource.getOffers(params.value);
      if (result.success == 1)
        return Right(result.offers);
      else
        return Left(
            GeneralFailure(message: "هیچ آفری در نزدیکی شما وجود ندارد"));
    } on ServerException catch (e) {
      return Left(GeneralFailure(message: e.message));
    }
  }
}
