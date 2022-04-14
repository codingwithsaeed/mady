import 'package:dartz/dartz.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/features/login/domain/entities/user.dart';
import 'package:mady/features/offers/domain/entities/category_offers/category_offers.dart';

abstract class OfferRepository {
  Future<Either<Failure, List<CategoryOffers>>> getAllOffers(ApiParam params);
  Future<Either<Failure, bool>> reserveOffer(ApiParam params);
  Future<Either<Failure, User>> getUser(String key);
}
