import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/features/reserve_offer/domain/entities/offer_details.dart';
import 'package:mady/features/reserve_offer/domain/entities/reserve/reserve.dart';
import 'package:mady/features/reserve_offer/domain/repositories/reserve_offer_repository.dart';

@injectable
class ReserveOfferUsecase {
  final ReserveOfferRepository _repository;
  const ReserveOfferUsecase(this._repository);

  Future<Either<Failure, bool>> reserve(ApiParam params) async =>
      await _repository.reserve(params);

  Future<Either<Failure, OfferDetails>> getDetails(ApiParam params) async =>
      await _repository.getDetails(params);

  Future<Either<Failure, List<Reserve>>> getReserves(ApiParam params) async =>
      await _repository.getReserves(params);
}
