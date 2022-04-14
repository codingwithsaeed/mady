import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_details.freezed.dart';
part 'offer_details.g.dart';

@freezed
class OfferDetails with _$OfferDetails {
  const factory OfferDetails(bool reserved, int count) = _OfferDetails;

  factory OfferDetails.fromJson(Map<String, dynamic> json) =>
      _$OfferDetailsFromJson(json);
}
