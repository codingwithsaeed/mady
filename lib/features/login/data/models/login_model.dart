import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mady/features/user/domain/entities/user.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel(
    int success,
    User? user,
  ) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}
