// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_offers_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryOffersList _$$_CategoryOffersListFromJson(
        Map<String, dynamic> json) =>
    _$_CategoryOffersList(
      offers: (json['offers'] as List<dynamic>)
          .map((e) => CategoryOffers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryOffersListToJson(
        _$_CategoryOffersList instance) =>
    <String, dynamic>{
      'offers': instance.offers,
    };
