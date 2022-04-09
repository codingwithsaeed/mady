// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Offer _$$_OfferFromJson(Map<String, dynamic> json) => _$_Offer(
      oid: json['oid'] as String,
      content: json['content'] as String,
      date: json['date'] as String,
      sTime: json['sTime'] as String,
      eTime: json['eTime'] as String,
      price: json['price'] as String,
      percent: json['percent'] as String,
      currentPercent: json['currentPercent'] as String,
      picture: json['picture'] as String,
      count: json['count'] as String,
      sid: json['sid'] as String,
      storeName: json['storeName'] as String,
      website: json['website'] as String,
      logo: json['logo'] as String,
      lat: json['lat'] as String,
      lng: json['lng'] as String,
    );

Map<String, dynamic> _$$_OfferToJson(_$_Offer instance) => <String, dynamic>{
      'oid': instance.oid,
      'content': instance.content,
      'date': instance.date,
      'sTime': instance.sTime,
      'eTime': instance.eTime,
      'price': instance.price,
      'percent': instance.percent,
      'currentPercent': instance.currentPercent,
      'picture': instance.picture,
      'count': instance.count,
      'sid': instance.sid,
      'storeName': instance.storeName,
      'website': instance.website,
      'logo': instance.logo,
      'lat': instance.lat,
      'lng': instance.lng,
    };
