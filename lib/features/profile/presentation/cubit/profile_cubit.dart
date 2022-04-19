// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/utils/consts.dart';
import 'package:mady/features/user/domain/usecases/user_usecase.dart';

import 'profile_state.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final UserUsecase _usecase;
  ProfileCubit(this._usecase) : super(const Initial());

  Future<void> getUser() async {
    emit(const Loading());
    final user = await _usecase.getUser(userKey);
    user.fold(
      (error) => emit(Error((error as GeneralFailure).message)),
      (user) => emit(Loaded(user)),
    );
  }

  Future<void> logout() async {
    emit(const Loading());
    final user = await _usecase.removeUser(userKey);
    user.fold(
      (error) => emit(Error((error as GeneralFailure).message)),
      (removed) {
        if (removed)
          emit(const Logout());
        else
          emit(const Error('مشکل در فرآیند خروج'));
      },
    );
  }
}
