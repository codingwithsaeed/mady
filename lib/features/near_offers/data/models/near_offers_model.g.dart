// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'near_offers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NearOffersModel _$$_NearOffersModelFromJson(Map<String, dynamic> json) =>
    _$_NearOffersModel(
      success: json['success'] as int,
      offers: (json['offers'] as List<dynamic>)
          .map((e) => Offer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NearOffersModelToJson(_$_NearOffersModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'offers': instance.offers,
    };
