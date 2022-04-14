// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reserve_offer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReserveOfferEventTearOff {
  const _$ReserveOfferEventTearOff();

  _Started started() {
    return const _Started();
  }

  _GetDetails getDetails(Offer offer) {
    return _GetDetails(
      offer,
    );
  }

  _Reserve reserve(Offer offer, String count) {
    return _Reserve(
      offer,
      count,
    );
  }
}

/// @nodoc
const $ReserveOfferEvent = _$ReserveOfferEventTearOff();

/// @nodoc
mixin _$ReserveOfferEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Offer offer) getDetails,
    required TResult Function(Offer offer, String count) reserve,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Offer offer)? getDetails,
    TResult Function(Offer offer, String count)? reserve,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Offer offer)? getDetails,
    TResult Function(Offer offer, String count)? reserve,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_Reserve value) reserve,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_Reserve value)? reserve,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_Reserve value)? reserve,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReserveOfferEventCopyWith<$Res> {
  factory $ReserveOfferEventCopyWith(
          ReserveOfferEvent value, $Res Function(ReserveOfferEvent) then) =
      _$ReserveOfferEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReserveOfferEventCopyWithImpl<$Res>
    implements $ReserveOfferEventCopyWith<$Res> {
  _$ReserveOfferEventCopyWithImpl(this._value, this._then);

  final ReserveOfferEvent _value;
  // ignore: unused_field
  final $Res Function(ReserveOfferEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ReserveOfferEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ReserveOfferEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Offer offer) getDetails,
    required TResult Function(Offer offer, String count) reserve,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Offer offer)? getDetails,
    TResult Function(Offer offer, String count)? reserve,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Offer offer)? getDetails,
    TResult Function(Offer offer, String count)? reserve,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_Reserve value) reserve,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_Reserve value)? reserve,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_Reserve value)? reserve,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ReserveOfferEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$GetDetailsCopyWith<$Res> {
  factory _$GetDetailsCopyWith(
          _GetDetails value, $Res Function(_GetDetails) then) =
      __$GetDetailsCopyWithImpl<$Res>;
  $Res call({Offer offer});

  $OfferCopyWith<$Res> get offer;
}

/// @nodoc
class __$GetDetailsCopyWithImpl<$Res>
    extends _$ReserveOfferEventCopyWithImpl<$Res>
    implements _$GetDetailsCopyWith<$Res> {
  __$GetDetailsCopyWithImpl(
      _GetDetails _value, $Res Function(_GetDetails) _then)
      : super(_value, (v) => _then(v as _GetDetails));

  @override
  _GetDetails get _value => super._value as _GetDetails;

  @override
  $Res call({
    Object? offer = freezed,
  }) {
    return _then(_GetDetails(
      offer == freezed
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as Offer,
    ));
  }

  @override
  $OfferCopyWith<$Res> get offer {
    return $OfferCopyWith<$Res>(_value.offer, (value) {
      return _then(_value.copyWith(offer: value));
    });
  }
}

/// @nodoc

class _$_GetDetails implements _GetDetails {
  const _$_GetDetails(this.offer);

  @override
  final Offer offer;

  @override
  String toString() {
    return 'ReserveOfferEvent.getDetails(offer: $offer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetDetails &&
            const DeepCollectionEquality().equals(other.offer, offer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(offer));

  @JsonKey(ignore: true)
  @override
  _$GetDetailsCopyWith<_GetDetails> get copyWith =>
      __$GetDetailsCopyWithImpl<_GetDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Offer offer) getDetails,
    required TResult Function(Offer offer, String count) reserve,
  }) {
    return getDetails(offer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Offer offer)? getDetails,
    TResult Function(Offer offer, String count)? reserve,
  }) {
    return getDetails?.call(offer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Offer offer)? getDetails,
    TResult Function(Offer offer, String count)? reserve,
    required TResult orElse(),
  }) {
    if (getDetails != null) {
      return getDetails(offer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_Reserve value) reserve,
  }) {
    return getDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_Reserve value)? reserve,
  }) {
    return getDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_Reserve value)? reserve,
    required TResult orElse(),
  }) {
    if (getDetails != null) {
      return getDetails(this);
    }
    return orElse();
  }
}

abstract class _GetDetails implements ReserveOfferEvent {
  const factory _GetDetails(Offer offer) = _$_GetDetails;

  Offer get offer;
  @JsonKey(ignore: true)
  _$GetDetailsCopyWith<_GetDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReserveCopyWith<$Res> {
  factory _$ReserveCopyWith(_Reserve value, $Res Function(_Reserve) then) =
      __$ReserveCopyWithImpl<$Res>;
  $Res call({Offer offer, String count});

  $OfferCopyWith<$Res> get offer;
}

/// @nodoc
class __$ReserveCopyWithImpl<$Res> extends _$ReserveOfferEventCopyWithImpl<$Res>
    implements _$ReserveCopyWith<$Res> {
  __$ReserveCopyWithImpl(_Reserve _value, $Res Function(_Reserve) _then)
      : super(_value, (v) => _then(v as _Reserve));

  @override
  _Reserve get _value => super._value as _Reserve;

  @override
  $Res call({
    Object? offer = freezed,
    Object? count = freezed,
  }) {
    return _then(_Reserve(
      offer == freezed
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as Offer,
      count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $OfferCopyWith<$Res> get offer {
    return $OfferCopyWith<$Res>(_value.offer, (value) {
      return _then(_value.copyWith(offer: value));
    });
  }
}

/// @nodoc

class _$_Reserve implements _Reserve {
  const _$_Reserve(this.offer, this.count);

  @override
  final Offer offer;
  @override
  final String count;

  @override
  String toString() {
    return 'ReserveOfferEvent.reserve(offer: $offer, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Reserve &&
            const DeepCollectionEquality().equals(other.offer, offer) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(offer),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$ReserveCopyWith<_Reserve> get copyWith =>
      __$ReserveCopyWithImpl<_Reserve>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Offer offer) getDetails,
    required TResult Function(Offer offer, String count) reserve,
  }) {
    return reserve(offer, count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Offer offer)? getDetails,
    TResult Function(Offer offer, String count)? reserve,
  }) {
    return reserve?.call(offer, count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Offer offer)? getDetails,
    TResult Function(Offer offer, String count)? reserve,
    required TResult orElse(),
  }) {
    if (reserve != null) {
      return reserve(offer, count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_Reserve value) reserve,
  }) {
    return reserve(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_Reserve value)? reserve,
  }) {
    return reserve?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_Reserve value)? reserve,
    required TResult orElse(),
  }) {
    if (reserve != null) {
      return reserve(this);
    }
    return orElse();
  }
}

abstract class _Reserve implements ReserveOfferEvent {
  const factory _Reserve(Offer offer, String count) = _$_Reserve;

  Offer get offer;
  String get count;
  @JsonKey(ignore: true)
  _$ReserveCopyWith<_Reserve> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ReserveOfferStateTearOff {
  const _$ReserveOfferStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(Offer offer, bool isReserved) {
    return _Loaded(
      offer,
      isReserved,
    );
  }

  _Error error(String message) {
    return _Error(
      message,
    );
  }
}

/// @nodoc
const $ReserveOfferState = _$ReserveOfferStateTearOff();

/// @nodoc
mixin _$ReserveOfferState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Offer offer, bool isReserved) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Offer offer, bool isReserved)? loaded,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Offer offer, bool isReserved)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReserveOfferStateCopyWith<$Res> {
  factory $ReserveOfferStateCopyWith(
          ReserveOfferState value, $Res Function(ReserveOfferState) then) =
      _$ReserveOfferStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReserveOfferStateCopyWithImpl<$Res>
    implements $ReserveOfferStateCopyWith<$Res> {
  _$ReserveOfferStateCopyWithImpl(this._value, this._then);

  final ReserveOfferState _value;
  // ignore: unused_field
  final $Res Function(ReserveOfferState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ReserveOfferStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ReserveOfferState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Offer offer, bool isReserved) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Offer offer, bool isReserved)? loaded,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Offer offer, bool isReserved)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReserveOfferState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ReserveOfferStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ReserveOfferState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Offer offer, bool isReserved) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Offer offer, bool isReserved)? loaded,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Offer offer, bool isReserved)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ReserveOfferState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({Offer offer, bool isReserved});

  $OfferCopyWith<$Res> get offer;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$ReserveOfferStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? offer = freezed,
    Object? isReserved = freezed,
  }) {
    return _then(_Loaded(
      offer == freezed
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as Offer,
      isReserved == freezed
          ? _value.isReserved
          : isReserved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $OfferCopyWith<$Res> get offer {
    return $OfferCopyWith<$Res>(_value.offer, (value) {
      return _then(_value.copyWith(offer: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.offer, this.isReserved);

  @override
  final Offer offer;
  @override
  final bool isReserved;

  @override
  String toString() {
    return 'ReserveOfferState.loaded(offer: $offer, isReserved: $isReserved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.offer, offer) &&
            const DeepCollectionEquality()
                .equals(other.isReserved, isReserved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(offer),
      const DeepCollectionEquality().hash(isReserved));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Offer offer, bool isReserved) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(offer, isReserved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Offer offer, bool isReserved)? loaded,
    TResult Function(String message)? error,
  }) {
    return loaded?.call(offer, isReserved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Offer offer, bool isReserved)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(offer, isReserved);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ReserveOfferState {
  const factory _Loaded(Offer offer, bool isReserved) = _$_Loaded;

  Offer get offer;
  bool get isReserved;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$ReserveOfferStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ReserveOfferState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Offer offer, bool isReserved) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Offer offer, bool isReserved)? loaded,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Offer offer, bool isReserved)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ReserveOfferState {
  const factory _Error(String message) = _$_Error;

  String get message;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
