part of 'offer_bloc.dart';

@freezed
class OfferEvent with _$OfferEvent {
  const factory OfferEvent.started() = _Started;
  const factory OfferEvent.getOffers() = _GetOffers;
}