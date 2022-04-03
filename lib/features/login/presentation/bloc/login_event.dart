part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = Started;
  const factory LoginEvent.doAuth(String number, String password) = DoAuth;
}