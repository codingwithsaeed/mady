import 'package:freezed_annotation/freezed_annotation.dart';

part '../offer.freezed.dart';
part '../offer.g.dart';

@freezed
class Offer with _$Offer {
  const Offer._();

  const factory Offer({
    required String oid,
    required String content,
    required String date,
    required String sTime,
    required String eTime,
    required String price,
    required String percent,
    required String currentPercent,
    required String picture,
    required String count,
    required String sid,
    required String storeName,
    required String website,
    required String logo,
    required String lat,
    required String lng,
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}
