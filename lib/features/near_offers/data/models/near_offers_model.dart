import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mady/features/offers/domain/entities/offer/offer.dart';

part 'near_offers_model.freezed.dart';
part 'near_offers_model.g.dart';

@freezed
class NearOffersModel with _$NearOffersModel {
  const factory NearOffersModel({
    required int success,
    required List<Offer> offers,
  }) = _NearOffersModel;

  factory NearOffersModel.fromJson(Map<String, dynamic> json) =>
      _$NearOffersModelFromJson(json);
}
