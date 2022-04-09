import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/features/offers/domain/entities/category_offers/category_offers.dart';
import 'package:mady/features/offers/domain/usecase/offer_usecase.dart';

part 'offer_event.dart';
part 'offer_state.dart';
part 'offer_bloc.freezed.dart';

class OfferBloc extends Bloc<OfferEvent, OfferState> {
  final OfferUsecase _usecase;
  OfferBloc(this._usecase) : super(const _Initial()) {
    on<_GetOffers>((event, emit) async {
      emit(const OfferState.loading());

      final result = await _usecase.getAllOffers(
        ApiParam(
          value: {
            'action': 'get_all_offers',
            'lat': event.lat,
            'lng': event.lng,
          },
        ),
      );

      result.fold(
        (error) => emit(OfferState.error((error as GeneralFailure).message)),
        (offers) => emit(OfferState.loaded(offers)),
      );
      
    });
  }
}
