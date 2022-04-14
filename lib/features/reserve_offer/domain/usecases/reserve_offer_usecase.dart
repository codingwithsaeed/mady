import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/features/login/domain/entities/user.dart';
import 'package:mady/features/reserve_offer/domain/entities/offer_details.dart';
import 'package:mady/features/reserve_offer/domain/repositories/reserve_offer_repository.dart';

@injectable
class ReserveOfferUsecase {
  ReserveOfferUsecase(this.repository);

  final ReserveOfferRepository repository;

  Future<Either<Failure, User>> getUser(String key) async =>
      await repository.getUser(key);

  Future<Either<Failure, bool>> reserve(ApiParam params) async =>
      await repository.reserve(params);

  Future<Either<Failure, OfferDetails>> getDetails(ApiParam params) async =>
      await repository.getDetails(params);
}
