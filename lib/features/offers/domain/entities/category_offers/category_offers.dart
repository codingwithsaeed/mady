import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mady/features/offers/domain/entities/offer/offer.dart';

part 'category_offers.freezed.dart';
part 'category_offers.g.dart';

@freezed
class CategoryOffers with _$CategoryOffers {
  const factory CategoryOffers({
    required int success,
    required String name,
    required List<Offer> data,
  }) = _CategoryOffers;

  factory CategoryOffers.fromJson(Map<String, dynamic> json) =>
      _$CategoryOffersFromJson(json);
}
