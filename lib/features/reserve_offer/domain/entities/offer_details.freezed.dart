// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offer_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfferDetails _$OfferDetailsFromJson(Map<String, dynamic> json) {
  return _OfferDetails.fromJson(json);
}

/// @nodoc
class _$OfferDetailsTearOff {
  const _$OfferDetailsTearOff();

  _OfferDetails call(bool reserved, int count) {
    return _OfferDetails(
      reserved,
      count,
    );
  }

  OfferDetails fromJson(Map<String, Object?> json) {
    return OfferDetails.fromJson(json);
  }
}

/// @nodoc
const $OfferDetails = _$OfferDetailsTearOff();

/// @nodoc
mixin _$OfferDetails {
  bool get reserved => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferDetailsCopyWith<OfferDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferDetailsCopyWith<$Res> {
  factory $OfferDetailsCopyWith(
          OfferDetails value, $Res Function(OfferDetails) then) =
      _$OfferDetailsCopyWithImpl<$Res>;
  $Res call({bool reserved, int count});
}

/// @nodoc
class _$OfferDetailsCopyWithImpl<$Res> implements $OfferDetailsCopyWith<$Res> {
  _$OfferDetailsCopyWithImpl(this._value, this._then);

  final OfferDetails _value;
  // ignore: unused_field
  final $Res Function(OfferDetails) _then;

  @override
  $Res call({
    Object? reserved = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      reserved: reserved == freezed
          ? _value.reserved
          : reserved // ignore: cast_nullable_to_non_nullable
              as bool,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$OfferDetailsCopyWith<$Res>
    implements $OfferDetailsCopyWith<$Res> {
  factory _$OfferDetailsCopyWith(
          _OfferDetails value, $Res Function(_OfferDetails) then) =
      __$OfferDetailsCopyWithImpl<$Res>;
  @override
  $Res call({bool reserved, int count});
}

/// @nodoc
class __$OfferDetailsCopyWithImpl<$Res> extends _$OfferDetailsCopyWithImpl<$Res>
    implements _$OfferDetailsCopyWith<$Res> {
  __$OfferDetailsCopyWithImpl(
      _OfferDetails _value, $Res Function(_OfferDetails) _then)
      : super(_value, (v) => _then(v as _OfferDetails));

  @override
  _OfferDetails get _value => super._value as _OfferDetails;

  @override
  $Res call({
    Object? reserved = freezed,
    Object? count = freezed,
  }) {
    return _then(_OfferDetails(
      reserved == freezed
          ? _value.reserved
          : reserved // ignore: cast_nullable_to_non_nullable
              as bool,
      count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferDetails implements _OfferDetails {
  const _$_OfferDetails(this.reserved, this.count);

  factory _$_OfferDetails.fromJson(Map<String, dynamic> json) =>
      _$$_OfferDetailsFromJson(json);

  @override
  final bool reserved;
  @override
  final int count;

  @override
  String toString() {
    return 'OfferDetails(reserved: $reserved, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OfferDetails &&
            const DeepCollectionEquality().equals(other.reserved, reserved) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reserved),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$OfferDetailsCopyWith<_OfferDetails> get copyWith =>
      __$OfferDetailsCopyWithImpl<_OfferDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferDetailsToJson(this);
  }
}

abstract class _OfferDetails implements OfferDetails {
  const factory _OfferDetails(bool reserved, int count) = _$_OfferDetails;

  factory _OfferDetails.fromJson(Map<String, dynamic> json) =
      _$_OfferDetails.fromJson;

  @override
  bool get reserved;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$OfferDetailsCopyWith<_OfferDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
