import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/features/offers/domain/entities/category_offers/category_offers.dart';
import 'package:mady/features/offers/domain/repositories/offer_repository.dart';

@injectable
class OfferUsecase {
  final OfferRepository _repository;

  OfferUsecase(this._repository);

  Future<Either<Failure, List<CategoryOffers>>> getAllOffers(
    ApiParam params,
  ) async =>
      await _repository.getAllOffers(params);
}
