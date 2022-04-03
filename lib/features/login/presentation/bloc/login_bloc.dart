import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mady/core/errors/failure.dart';
import 'package:mady/core/network/api_param.dart';
import 'package:mady/features/login/domain/entities/user.dart';
import 'package:mady/features/login/domain/usecases/login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUsecase _usecase;

  LoginBloc(this._usecase) : super(const _Initial()) {
    on<DoAuth>(
      (event, emit) async {
        emit(const LoginState.loading());
        final result = await _usecase.authenticate(ApiParam(value: {
          'action': 'signin',
          'phone': event.number,
          'password': event.password,
        }));

        result.fold(
          (failure) => emit(
            LoginState.error((failure as GeneralFailure).message),
          ),
          (user) => emit(
            LoginState.loaded(user),
          ),
        );
      },
    );
  }
}
