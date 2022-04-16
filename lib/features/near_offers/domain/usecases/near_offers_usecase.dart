import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/features/login/domain/entities/user.dart';
import 'package:mady/features/near_offers/domain/repositories/near_offers_repository.dart';
import 'package:mady/features/offers/domain/entities/offer/offer.dart';

import '../../../../core/errors/failure.dart';

@injectable
class NearOffersUsecase {
  NearOffersUsecase(this._repository);

  final NearOffersRepository _repository;

  Future<Either<Failure, List<Offer>>> getNearOffers(ApiParam params) async =>
      await _repository.getAllOffers(params);

  Future<Either<Failure, User>> getUser(String key) async =>
      await _repository.getUser(key);
}
