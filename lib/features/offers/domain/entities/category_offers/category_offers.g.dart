// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_offers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryOffers _$$_CategoryOffersFromJson(Map<String, dynamic> json) =>
    _$_CategoryOffers(
      success: json['success'] as int,
      name: json['name'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Offer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryOffersToJson(_$_CategoryOffers instance) =>
    <String, dynamic>{
      'success': instance.success,
      'name': instance.name,
      'data': instance.data,
    };
