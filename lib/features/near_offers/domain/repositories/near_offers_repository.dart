import 'package:dartz/dartz.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/features/offers/domain/entities/offer/offer.dart';

abstract class NearOffersRepository {
  Future<Either<Failure, List<Offer>>> getOffers(ApiParam params);
}