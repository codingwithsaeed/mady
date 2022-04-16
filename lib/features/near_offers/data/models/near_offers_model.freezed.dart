// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'near_offers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NearOffersModel _$NearOffersModelFromJson(Map<String, dynamic> json) {
  return _NearOffersModel.fromJson(json);
}

/// @nodoc
class _$NearOffersModelTearOff {
  const _$NearOffersModelTearOff();

  _NearOffersModel call({required int success, required List<Offer> offers}) {
    return _NearOffersModel(
      success: success,
      offers: offers,
    );
  }

  NearOffersModel fromJson(Map<String, Object?> json) {
    return NearOffersModel.fromJson(json);
  }
}

/// @nodoc
const $NearOffersModel = _$NearOffersModelTearOff();

/// @nodoc
mixin _$NearOffersModel {
  int get success => throw _privateConstructorUsedError;
  List<Offer> get offers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NearOffersModelCopyWith<NearOffersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearOffersModelCopyWith<$Res> {
  factory $NearOffersModelCopyWith(
          NearOffersModel value, $Res Function(NearOffersModel) then) =
      _$NearOffersModelCopyWithImpl<$Res>;
  $Res call({int success, List<Offer> offers});
}

/// @nodoc
class _$NearOffersModelCopyWithImpl<$Res>
    implements $NearOffersModelCopyWith<$Res> {
  _$NearOffersModelCopyWithImpl(this._value, this._then);

  final NearOffersModel _value;
  // ignore: unused_field
  final $Res Function(NearOffersModel) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? offers = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      offers: offers == freezed
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
    ));
  }
}

/// @nodoc
abstract class _$NearOffersModelCopyWith<$Res>
    implements $NearOffersModelCopyWith<$Res> {
  factory _$NearOffersModelCopyWith(
          _NearOffersModel value, $Res Function(_NearOffersModel) then) =
      __$NearOffersModelCopyWithImpl<$Res>;
  @override
  $Res call({int success, List<Offer> offers});
}

/// @nodoc
class __$NearOffersModelCopyWithImpl<$Res>
    extends _$NearOffersModelCopyWithImpl<$Res>
    implements _$NearOffersModelCopyWith<$Res> {
  __$NearOffersModelCopyWithImpl(
      _NearOffersModel _value, $Res Function(_NearOffersModel) _then)
      : super(_value, (v) => _then(v as _NearOffersModel));

  @override
  _NearOffersModel get _value => super._value as _NearOffersModel;

  @override
  $Res call({
    Object? success = freezed,
    Object? offers = freezed,
  }) {
    return _then(_NearOffersModel(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      offers: offers == freezed
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NearOffersModel implements _NearOffersModel {
  const _$_NearOffersModel({required this.success, required this.offers});

  factory _$_NearOffersModel.fromJson(Map<String, dynamic> json) =>
      _$$_NearOffersModelFromJson(json);

  @override
  final int success;
  @override
  final List<Offer> offers;

  @override
  String toString() {
    return 'NearOffersModel(success: $success, offers: $offers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NearOffersModel &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.offers, offers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(offers));

  @JsonKey(ignore: true)
  @override
  _$NearOffersModelCopyWith<_NearOffersModel> get copyWith =>
      __$NearOffersModelCopyWithImpl<_NearOffersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NearOffersModelToJson(this);
  }
}

abstract class _NearOffersModel implements NearOffersModel {
  const factory _NearOffersModel(
      {required int success, required List<Offer> offers}) = _$_NearOffersModel;

  factory _NearOffersModel.fromJson(Map<String, dynamic> json) =
      _$_NearOffersModel.fromJson;

  @override
  int get success;
  @override
  List<Offer> get offers;
  @override
  @JsonKey(ignore: true)
  _$NearOffersModelCopyWith<_NearOffersModel> get copyWith =>
      throw _privateConstructorUsedError;
}
