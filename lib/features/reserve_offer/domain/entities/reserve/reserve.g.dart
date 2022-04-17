// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserve.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reserve _$$_ReserveFromJson(Map<String, dynamic> json) => _$_Reserve(
      json['rid'] as String,
      json['uid'] as String,
      json['oid'] as String,
      json['content'] as String,
      json['storeName'] as String,
      json['count'] as String,
      json['receipt'] as String,
      json['status'] as String,
    );

Map<String, dynamic> _$$_ReserveToJson(_$_Reserve instance) =>
    <String, dynamic>{
      'rid': instance.rid,
      'uid': instance.uid,
      'oid': instance.oid,
      'content': instance.content,
      'storeName': instance.storeName,
      'count': instance.count,
      'receipt': instance.receipt,
      'status': instance.status,
    };
