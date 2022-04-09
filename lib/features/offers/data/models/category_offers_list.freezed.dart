// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_offers_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryOffersList _$CategoryOffersListFromJson(Map<String, dynamic> json) {
  return _CategoryOffersList.fromJson(json);
}

/// @nodoc
class _$CategoryOffersListTearOff {
  const _$CategoryOffersListTearOff();

  _CategoryOffersList call({required List<CategoryOffers> offers}) {
    return _CategoryOffersList(
      offers: offers,
    );
  }

  CategoryOffersList fromJson(Map<String, Object?> json) {
    return CategoryOffersList.fromJson(json);
  }
}

/// @nodoc
const $CategoryOffersList = _$CategoryOffersListTearOff();

/// @nodoc
mixin _$CategoryOffersList {
  List<CategoryOffers> get offers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryOffersListCopyWith<CategoryOffersList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryOffersListCopyWith<$Res> {
  factory $CategoryOffersListCopyWith(
          CategoryOffersList value, $Res Function(CategoryOffersList) then) =
      _$CategoryOffersListCopyWithImpl<$Res>;
  $Res call({List<CategoryOffers> offers});
}

/// @nodoc
class _$CategoryOffersListCopyWithImpl<$Res>
    implements $CategoryOffersListCopyWith<$Res> {
  _$CategoryOffersListCopyWithImpl(this._value, this._then);

  final CategoryOffersList _value;
  // ignore: unused_field
  final $Res Function(CategoryOffersList) _then;

  @override
  $Res call({
    Object? offers = freezed,
  }) {
    return _then(_value.copyWith(
      offers: offers == freezed
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<CategoryOffers>,
    ));
  }
}

/// @nodoc
abstract class _$CategoryOffersListCopyWith<$Res>
    implements $CategoryOffersListCopyWith<$Res> {
  factory _$CategoryOffersListCopyWith(
          _CategoryOffersList value, $Res Function(_CategoryOffersList) then) =
      __$CategoryOffersListCopyWithImpl<$Res>;
  @override
  $Res call({List<CategoryOffers> offers});
}

/// @nodoc
class __$CategoryOffersListCopyWithImpl<$Res>
    extends _$CategoryOffersListCopyWithImpl<$Res>
    implements _$CategoryOffersListCopyWith<$Res> {
  __$CategoryOffersListCopyWithImpl(
      _CategoryOffersList _value, $Res Function(_CategoryOffersList) _then)
      : super(_value, (v) => _then(v as _CategoryOffersList));

  @override
  _CategoryOffersList get _value => super._value as _CategoryOffersList;

  @override
  $Res call({
    Object? offers = freezed,
  }) {
    return _then(_CategoryOffersList(
      offers: offers == freezed
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<CategoryOffers>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryOffersList extends _CategoryOffersList {
  const _$_CategoryOffersList({required this.offers}) : super._();

  factory _$_CategoryOffersList.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryOffersListFromJson(json);

  @override
  final List<CategoryOffers> offers;

  @override
  String toString() {
    return 'CategoryOffersList(offers: $offers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryOffersList &&
            const DeepCollectionEquality().equals(other.offers, offers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(offers));

  @JsonKey(ignore: true)
  @override
  _$CategoryOffersListCopyWith<_CategoryOffersList> get copyWith =>
      __$CategoryOffersListCopyWithImpl<_CategoryOffersList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryOffersListToJson(this);
  }
}

abstract class _CategoryOffersList extends CategoryOffersList {
  const factory _CategoryOffersList({required List<CategoryOffers> offers}) =
      _$_CategoryOffersList;
  const _CategoryOffersList._() : super._();

  factory _CategoryOffersList.fromJson(Map<String, dynamic> json) =
      _$_CategoryOffersList.fromJson;

  @override
  List<CategoryOffers> get offers;
  @override
  @JsonKey(ignore: true)
  _$CategoryOffersListCopyWith<_CategoryOffersList> get copyWith =>
      throw _privateConstructorUsedError;
}
