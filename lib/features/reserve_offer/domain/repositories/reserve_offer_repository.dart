import 'package:dartz/dartz.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/features/reserve_offer/domain/entities/offer_details.dart';

abstract class ReserveOfferRepository {
  Future<Either<Failure, OfferDetails>> getDetails(ApiParam params);
  Future<Either<Failure, bool>> reserve(ApiParam params);
}
