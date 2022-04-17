
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/core/utils/consts.dart';
import 'package:mady/features/near_offers/domain/usecases/near_offers_usecase.dart';
import 'package:mady/features/near_offers/presentation/cubit/near_offers_state.dart';
import 'package:mady/features/user/domain/entities/user.dart';
import 'package:mady/features/user/domain/usecases/user_usecase.dart';

@injectable
class NearOffersCubit extends Cubit<NearOffersState> {
  final NearOffersUsecase _offerUsecase;
  final UserUsecase _userUsecase;
  NearOffersCubit({
    required NearOffersUsecase offerUsecase,
    required UserUsecase userUsecase,
  })  : _offerUsecase = offerUsecase,
        _userUsecase = userUsecase,
        super(const NearOffersState.initial());

  Future<void> getOffers() async {
    emit(const NearOffersState.loading());
    final user = await getUser(userKey);
    if (user == null) {
      emit(const Error('خطا در دریافت اطلاعات کش'));
      return;
    }
    final result = await _offerUsecase.getOffers(ApiParam(value: {
      'action': 'get_near_offers',
      'lat': user.lat,
      'lng': user.lng,
    }));

    result.fold(
      (failure) => emit(Error((failure as GeneralFailure).message)),
      (offers) => emit(Loaded(offers)),
    );
  }

  Future<User?> getUser(String userKey) async {
    final userRes = await _userUsecase.getUser(userKey);
    return userRes.fold((error) => null, (user) => user);
  }

  Future<void> updateUserLocation(String lat, String lng) async {
    final user = await getUser(userKey);
    if (user == null) {
      emit(const Error('خطا در دریافت اطلاعات کش'));
      return;
    }
    final result = await _userUsecase.updateLocationAndSave(
        ApiParam(value: {
          'action': 'update_location',
          'uid': user.uid,
          'lat': lat,
          'lng': lng,
        }),
        userKey,
        user);

    result.fold(
      (failure) => emit(Error((failure as GeneralFailure).message)),
      (isUpdated) async => getOffers(),
    );
  }
}
