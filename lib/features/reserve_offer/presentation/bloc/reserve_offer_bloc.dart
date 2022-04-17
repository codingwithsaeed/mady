import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/core/utils/consts.dart';
import 'package:mady/features/user/domain/entities/user.dart';
import 'package:mady/features/offers/domain/entities/offer/offer.dart';
import 'package:mady/features/reserve_offer/domain/usecases/reserve_offer_usecase.dart';
import 'package:mady/features/user/domain/usecases/user_usecase.dart';

part 'reserve_offer_event.dart';
part 'reserve_offer_state.dart';
part 'reserve_offer_bloc.freezed.dart';

@injectable
class ReserveOfferBloc extends Bloc<ReserveOfferEvent, ReserveOfferState> {
  final ReserveOfferUsecase _reserveUsecase;
  final UserUsecase _userUsecase;

  ReserveOfferBloc({
    required ReserveOfferUsecase reserveUsecase,
    required UserUsecase userUsecase,
  })  : _reserveUsecase = reserveUsecase,
        _userUsecase = userUsecase,
        super(const ReserveOfferState.initial()) {
    on<_GetDetails>((event, emit) async {
      emit(const ReserveOfferState.loading());
      User user = await getUser(emit);

      final result = await _reserveUsecase.getDetails(ApiParam(value: {
        'action': 'get_offer_details',
        'oid': event.offer.oid,
        'uid': user.uid,
      }));
      result.fold((error) {
        emit(ReserveOfferState.error((error as GeneralFailure).message));
      }, (details) {
        emit(ReserveOfferState.loaded(
            event.offer.copyWith(count: details.count.toString()),
            details.reserved));
      });
    });

    on<_Reserve>((event, emit) async {
      emit(const ReserveOfferState.loading());
      User user = await getUser(emit);

      final result = await _reserveUsecase.reserve(ApiParam(value: {
        'action': 'reserve_offer',
        'uid': user.uid,
        'oid': event.offer.oid,
        'count': event.count
      }));

      result.fold(
        (error) =>
            emit(ReserveOfferState.error((error as GeneralFailure).message)),
        (isReserved) {
          int remainingCount =
              int.parse(event.offer.count) - int.parse(event.count);
          emit(
            ReserveOfferState.loaded(
                event.offer.copyWith(count: remainingCount.toString()),
                isReserved),
          );
        },
      );
    });
  }

  Future<User> getUser(Emitter<ReserveOfferState> emit) async {
    late User user;
    final userRes = await _userUsecase.getUser(userKey);
    userRes.fold((error) {
      emit(ReserveOfferState.error((error as GeneralFailure).message));
      return;
    }, (cachedUser) async {
      user = cachedUser;
    });
    return user;
  }
}
