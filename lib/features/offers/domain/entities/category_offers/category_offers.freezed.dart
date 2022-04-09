// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_offers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryOffers _$CategoryOffersFromJson(Map<String, dynamic> json) {
  return _CategoryOffers.fromJson(json);
}

/// @nodoc
class _$CategoryOffersTearOff {
  const _$CategoryOffersTearOff();

  _CategoryOffers call(
      {required int success, required String name, required List<Offer> data}) {
    return _CategoryOffers(
      success: success,
      name: name,
      data: data,
    );
  }

  CategoryOffers fromJson(Map<String, Object?> json) {
    return CategoryOffers.fromJson(json);
  }
}

/// @nodoc
const $CategoryOffers = _$CategoryOffersTearOff();

/// @nodoc
mixin _$CategoryOffers {
  int get success => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Offer> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryOffersCopyWith<CategoryOffers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryOffersCopyWith<$Res> {
  factory $CategoryOffersCopyWith(
          CategoryOffers value, $Res Function(CategoryOffers) then) =
      _$CategoryOffersCopyWithImpl<$Res>;
  $Res call({int success, String name, List<Offer> data});
}

/// @nodoc
class _$CategoryOffersCopyWithImpl<$Res>
    implements $CategoryOffersCopyWith<$Res> {
  _$CategoryOffersCopyWithImpl(this._value, this._then);

  final CategoryOffers _value;
  // ignore: unused_field
  final $Res Function(CategoryOffers) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? name = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
    ));
  }
}

/// @nodoc
abstract class _$CategoryOffersCopyWith<$Res>
    implements $CategoryOffersCopyWith<$Res> {
  factory _$CategoryOffersCopyWith(
          _CategoryOffers value, $Res Function(_CategoryOffers) then) =
      __$CategoryOffersCopyWithImpl<$Res>;
  @override
  $Res call({int success, String name, List<Offer> data});
}

/// @nodoc
class __$CategoryOffersCopyWithImpl<$Res>
    extends _$CategoryOffersCopyWithImpl<$Res>
    implements _$CategoryOffersCopyWith<$Res> {
  __$CategoryOffersCopyWithImpl(
      _CategoryOffers _value, $Res Function(_CategoryOffers) _then)
      : super(_value, (v) => _then(v as _CategoryOffers));

  @override
  _CategoryOffers get _value => super._value as _CategoryOffers;

  @override
  $Res call({
    Object? success = freezed,
    Object? name = freezed,
    Object? data = freezed,
  }) {
    return _then(_CategoryOffers(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryOffers implements _CategoryOffers {
  const _$_CategoryOffers(
      {required this.success, required this.name, required this.data});

  factory _$_CategoryOffers.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryOffersFromJson(json);

  @override
  final int success;
  @override
  final String name;
  @override
  final List<Offer> data;

  @override
  String toString() {
    return 'CategoryOffers(success: $success, name: $name, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryOffers &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$CategoryOffersCopyWith<_CategoryOffers> get copyWith =>
      __$CategoryOffersCopyWithImpl<_CategoryOffers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryOffersToJson(this);
  }
}

abstract class _CategoryOffers implements CategoryOffers {
  const factory _CategoryOffers(
      {required int success,
      required String name,
      required List<Offer> data}) = _$_CategoryOffers;

  factory _CategoryOffers.fromJson(Map<String, dynamic> json) =
      _$_CategoryOffers.fromJson;

  @override
  int get success;
  @override
  String get name;
  @override
  List<Offer> get data;
  @override
  @JsonKey(ignore: true)
  _$CategoryOffersCopyWith<_CategoryOffers> get copyWith =>
      throw _privateConstructorUsedError;
}
