part of 'reserve_offer_bloc.dart';

@freezed
class ReserveOfferEvent with _$ReserveOfferEvent {
  const factory ReserveOfferEvent.started() = _Started;
  const factory ReserveOfferEvent.getDetails(Offer offer) = _GetDetails;
  const factory ReserveOfferEvent.reserve(Offer offer, String count) = _Reserve;
}