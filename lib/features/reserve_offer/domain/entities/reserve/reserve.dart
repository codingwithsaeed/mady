import 'package:freezed_annotation/freezed_annotation.dart';

part 'reserve.freezed.dart';
part 'reserve.g.dart';

@freezed
class Reserve with _$Reserve {
  const factory Reserve(
    String rid,
    String uid,
    String oid,
    String sid,
    String content,
    String phone,
    String address,
    String storeName,
    String lat,
    String lng,
    String date,
    String sTime,
    String eTime,
    String price,
    String currentPrice,
    String percent,
    String logo,
    String picture,
    String count,
    String receipt,
    String status,
  ) = _Reserve;

  factory Reserve.fromJson(Map<String, dynamic> json) =>
      _$ReserveFromJson(json);
}