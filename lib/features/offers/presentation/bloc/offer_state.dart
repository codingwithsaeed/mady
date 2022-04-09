part of 'offer_bloc.dart';

@freezed
class OfferState with _$OfferState {
  const factory OfferState.initial() = _Initial;
  const factory OfferState.loading() = _Loading;
  const factory OfferState.loaded(List<CategoryOffers> offers) = _Loaded;
  const factory OfferState.error(String message) = _Error;
}
