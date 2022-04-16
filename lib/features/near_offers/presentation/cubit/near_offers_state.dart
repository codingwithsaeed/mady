
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mady/features/offers/domain/entities/offer/offer.dart';

part 'near_offers_state.freezed.dart';
@freezed
class NearOffersState with _$NearOffersState {
  const factory NearOffersState.initial() = Initial;
  const factory NearOffersState.loading() = Loading;
  const factory NearOffersState.loaded(List<Offer> offers) = Loaded;
  const factory NearOffersState.error(String message) = Error;
}
