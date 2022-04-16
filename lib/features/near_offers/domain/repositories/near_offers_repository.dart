import 'package:dartz/dartz.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/features/login/domain/entities/user.dart';
import 'package:mady/features/offers/domain/entities/offer/offer.dart';

abstract class NearOffersRepository {
  Future<Either<Failure, List<Offer>>> getAllOffers(ApiParam params);
  Future<Either<Failure, User>> getUser(String key);
}