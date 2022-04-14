part of 'reserve_offer_bloc.dart';

@freezed
class ReserveOfferState with _$ReserveOfferState {
  const factory ReserveOfferState.initial() = _Initial;
  const factory ReserveOfferState.loading() = _Loading;
  const factory ReserveOfferState.loaded(Offer offer, bool isReserved) = _Loaded;
  const factory ReserveOfferState.error(String message) = _Error;
}