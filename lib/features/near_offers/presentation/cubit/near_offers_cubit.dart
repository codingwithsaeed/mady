import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/core/utils/consts.dart';
import 'package:mady/features/login/domain/entities/user.dart';
import 'package:mady/features/near_offers/domain/usecases/near_offers_usecase.dart';
import 'package:mady/features/near_offers/presentation/cubit/near_offers_state.dart';

@injectable
class NearOffersCubit extends Cubit<NearOffersState> {
  final NearOffersUsecase _usecase;
  NearOffersCubit(this._usecase) : super(const NearOffersState.initial());

  Future<void> getOffers() async {
    emit(const NearOffersState.loading());
    final user = await getUser(userKey);
    if (user == null) {
      emit(const Error('خطا در دریافت اطلاعات کش'));
      return;
    }
    final result = await _usecase.getNearOffers(ApiParam(value: {
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
    final userRes = await _usecase.getUser(userKey);
    return userRes.fold((error) => null, (user) => user);
  }
}
