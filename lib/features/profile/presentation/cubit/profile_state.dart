
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mady/features/user/domain/entities/user.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = Initial;
  const factory ProfileState.loading() = Loading;
  const factory ProfileState.loaded(User user) = Loaded;
  const factory ProfileState.loadedWithError(User user, String message) = LoadedWithError;
  const factory ProfileState.error(String message) = Error;
  const factory ProfileState.logout() = Logout;
}

