import 'package:dartz/dartz.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/core/network/network_info.dart';
import 'package:mady/features/offers/domain/entities/category_offers/category_offers.dart';

import '../../domain/repositories/offer_repository.dart';
import '../datasources/offer_remote_datasource.dart';

class OfferRepositoryImpl extends OfferRepository {
  final OfferRemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  OfferRepositoryImpl({
    required OfferRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remoteDataSource = remoteDataSource,
        _networkInfo = networkInfo;

  @override
  Future<Either<Failure, List<CategoryOffers>>> getAllOffers(ApiParam params) {
    // TODO: implement getAllOffers
    throw UnimplementedError();
  }
}
