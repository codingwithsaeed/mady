import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/features/near_offers/domain/repositories/near_offers_repository.dart';
import 'package:mady/features/offers/domain/entities/offer/offer.dart';

@injectable
class NearOffersUsecase {
  NearOffersUsecase(this._repository);

  final NearOffersRepository _repository;

  Future<Either<Failure, List<Offer>>> getOffers(ApiParam params) async =>
      await _repository.getOffers(params);

}
