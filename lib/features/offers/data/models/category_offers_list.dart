import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mady/features/offers/domain/entities/category_offers/category_offers.dart';

part 'category_offers_list.freezed.dart';
part 'category_offers_list.g.dart';

@freezed
class CategoryOffersList with _$CategoryOffersList {
  const factory CategoryOffersList({
    required List<CategoryOffers> offers,
  }) = _CategoryOffersList;

  factory CategoryOffersList.fromJson(Map<String, dynamic> json) =>
      _$CategoryOffersListFromJson(json);
}
