// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return _LoginModel.fromJson(json);
}

/// @nodoc
class _$LoginModelTearOff {
  const _$LoginModelTearOff();

  _LoginModel call(int success, User? user) {
    return _LoginModel(
      success,
      user,
    );
  }

  LoginModel fromJson(Map<String, Object?> json) {
    return LoginModel.fromJson(json);
  }
}

/// @nodoc
const $LoginModel = _$LoginModelTearOff();

/// @nodoc
mixin _$LoginModel {
  int get success => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginModelCopyWith<LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
          LoginModel value, $Res Function(LoginModel) then) =
      _$LoginModelCopyWithImpl<$Res>;
  $Res call({int success, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginModelCopyWithImpl<$Res> implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._value, this._then);

  final LoginModel _value;
  // ignore: unused_field
  final $Res Function(LoginModel) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$LoginModelCopyWith<$Res> implements $LoginModelCopyWith<$Res> {
  factory _$LoginModelCopyWith(
          _LoginModel value, $Res Function(_LoginModel) then) =
      __$LoginModelCopyWithImpl<$Res>;
  @override
  $Res call({int success, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$LoginModelCopyWithImpl<$Res> extends _$LoginModelCopyWithImpl<$Res>
    implements _$LoginModelCopyWith<$Res> {
  __$LoginModelCopyWithImpl(
      _LoginModel _value, $Res Function(_LoginModel) _then)
      : super(_value, (v) => _then(v as _LoginModel));

  @override
  _LoginModel get _value => super._value as _LoginModel;

  @override
  $Res call({
    Object? success = freezed,
    Object? user = freezed,
  }) {
    return _then(_LoginModel(
      success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginModel implements _LoginModel {
  const _$_LoginModel(this.success, this.user);

  factory _$_LoginModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginModelFromJson(json);

  @override
  final int success;
  @override
  final User? user;

  @override
  String toString() {
    return 'LoginModel(success: $success, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginModel &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$LoginModelCopyWith<_LoginModel> get copyWith =>
      __$LoginModelCopyWithImpl<_LoginModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginModelToJson(this);
  }
}

abstract class _LoginModel implements LoginModel {
  const factory _LoginModel(int success, User? user) = _$_LoginModel;

  factory _LoginModel.fromJson(Map<String, dynamic> json) =
      _$_LoginModel.fromJson;

  @override
  int get success;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$LoginModelCopyWith<_LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}
