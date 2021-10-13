// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  _loadProfile loadProfile() {
    return const _loadProfile();
  }

  _errorHappened errorHappened(Object err) {
    return _errorHappened(
      err,
    );
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProfile,
    required TResult Function(Object err) errorHappened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadProfile,
    TResult Function(Object err)? errorHappened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProfile,
    TResult Function(Object err)? errorHappened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadProfile value) loadProfile,
    required TResult Function(_errorHappened value) errorHappened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_loadProfile value)? loadProfile,
    TResult Function(_errorHappened value)? errorHappened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadProfile value)? loadProfile,
    TResult Function(_errorHappened value)? errorHappened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$loadProfileCopyWith<$Res> {
  factory _$loadProfileCopyWith(
          _loadProfile value, $Res Function(_loadProfile) then) =
      __$loadProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$loadProfileCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$loadProfileCopyWith<$Res> {
  __$loadProfileCopyWithImpl(
      _loadProfile _value, $Res Function(_loadProfile) _then)
      : super(_value, (v) => _then(v as _loadProfile));

  @override
  _loadProfile get _value => super._value as _loadProfile;
}

/// @nodoc

class _$_loadProfile implements _loadProfile {
  const _$_loadProfile();

  @override
  String toString() {
    return 'ProfileEvent.loadProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _loadProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProfile,
    required TResult Function(Object err) errorHappened,
  }) {
    return loadProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadProfile,
    TResult Function(Object err)? errorHappened,
  }) {
    return loadProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProfile,
    TResult Function(Object err)? errorHappened,
    required TResult orElse(),
  }) {
    if (loadProfile != null) {
      return loadProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadProfile value) loadProfile,
    required TResult Function(_errorHappened value) errorHappened,
  }) {
    return loadProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_loadProfile value)? loadProfile,
    TResult Function(_errorHappened value)? errorHappened,
  }) {
    return loadProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadProfile value)? loadProfile,
    TResult Function(_errorHappened value)? errorHappened,
    required TResult orElse(),
  }) {
    if (loadProfile != null) {
      return loadProfile(this);
    }
    return orElse();
  }
}

abstract class _loadProfile implements ProfileEvent {
  const factory _loadProfile() = _$_loadProfile;
}

/// @nodoc
abstract class _$errorHappenedCopyWith<$Res> {
  factory _$errorHappenedCopyWith(
          _errorHappened value, $Res Function(_errorHappened) then) =
      __$errorHappenedCopyWithImpl<$Res>;
  $Res call({Object err});
}

/// @nodoc
class __$errorHappenedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$errorHappenedCopyWith<$Res> {
  __$errorHappenedCopyWithImpl(
      _errorHappened _value, $Res Function(_errorHappened) _then)
      : super(_value, (v) => _then(v as _errorHappened));

  @override
  _errorHappened get _value => super._value as _errorHappened;

  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(_errorHappened(
      err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_errorHappened implements _errorHappened {
  const _$_errorHappened(this.err);

  @override
  final Object err;

  @override
  String toString() {
    return 'ProfileEvent.errorHappened(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _errorHappened &&
            const DeepCollectionEquality().equals(other.err, err));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(err));

  @JsonKey(ignore: true)
  @override
  _$errorHappenedCopyWith<_errorHappened> get copyWith =>
      __$errorHappenedCopyWithImpl<_errorHappened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProfile,
    required TResult Function(Object err) errorHappened,
  }) {
    return errorHappened(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadProfile,
    TResult Function(Object err)? errorHappened,
  }) {
    return errorHappened?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProfile,
    TResult Function(Object err)? errorHappened,
    required TResult orElse(),
  }) {
    if (errorHappened != null) {
      return errorHappened(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadProfile value) loadProfile,
    required TResult Function(_errorHappened value) errorHappened,
  }) {
    return errorHappened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_loadProfile value)? loadProfile,
    TResult Function(_errorHappened value)? errorHappened,
  }) {
    return errorHappened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadProfile value)? loadProfile,
    TResult Function(_errorHappened value)? errorHappened,
    required TResult orElse(),
  }) {
    if (errorHappened != null) {
      return errorHappened(this);
    }
    return orElse();
  }
}

abstract class _errorHappened implements ProfileEvent {
  const factory _errorHappened(Object err) = _$_errorHappened;

  Object get err;
  @JsonKey(ignore: true)
  _$errorHappenedCopyWith<_errorHappened> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  _initial initial() {
    return const _initial();
  }

  _loaded loaded(Profile profile) {
    return _loaded(
      profile,
    );
  }

  _error error(Object err) {
    return _error(
      err,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Profile profile) loaded,
    required TResult Function(Object err) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile)? loaded,
    TResult Function(Object err)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile)? loaded,
    TResult Function(Object err)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class _$initialCopyWith<$Res> {
  factory _$initialCopyWith(_initial value, $Res Function(_initial) then) =
      __$initialCopyWithImpl<$Res>;
}

/// @nodoc
class __$initialCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$initialCopyWith<$Res> {
  __$initialCopyWithImpl(_initial _value, $Res Function(_initial) _then)
      : super(_value, (v) => _then(v as _initial));

  @override
  _initial get _value => super._value as _initial;
}

/// @nodoc

class _$_initial implements _initial {
  const _$_initial();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Profile profile) loaded,
    required TResult Function(Object err) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile)? loaded,
    TResult Function(Object err)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile)? loaded,
    TResult Function(Object err)? error,
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
    required TResult Function(_initial value) initial,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _initial implements ProfileState {
  const factory _initial() = _$_initial;
}

/// @nodoc
abstract class _$loadedCopyWith<$Res> {
  factory _$loadedCopyWith(_loaded value, $Res Function(_loaded) then) =
      __$loadedCopyWithImpl<$Res>;
  $Res call({Profile profile});

  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$loadedCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$loadedCopyWith<$Res> {
  __$loadedCopyWithImpl(_loaded _value, $Res Function(_loaded) _then)
      : super(_value, (v) => _then(v as _loaded));

  @override
  _loaded get _value => super._value as _loaded;

  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_loaded(
      profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$_loaded implements _loaded {
  const _$_loaded(this.profile);

  @override
  final Profile profile;

  @override
  String toString() {
    return 'ProfileState.loaded(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _loaded &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  _$loadedCopyWith<_loaded> get copyWith =>
      __$loadedCopyWithImpl<_loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Profile profile) loaded,
    required TResult Function(Object err) error,
  }) {
    return loaded(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile)? loaded,
    TResult Function(Object err)? error,
  }) {
    return loaded?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile)? loaded,
    TResult Function(Object err)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _loaded implements ProfileState {
  const factory _loaded(Profile profile) = _$_loaded;

  Profile get profile;
  @JsonKey(ignore: true)
  _$loadedCopyWith<_loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$errorCopyWith<$Res> {
  factory _$errorCopyWith(_error value, $Res Function(_error) then) =
      __$errorCopyWithImpl<$Res>;
  $Res call({Object err});
}

/// @nodoc
class __$errorCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$errorCopyWith<$Res> {
  __$errorCopyWithImpl(_error _value, $Res Function(_error) _then)
      : super(_value, (v) => _then(v as _error));

  @override
  _error get _value => super._value as _error;

  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(_error(
      err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_error implements _error {
  const _$_error(this.err);

  @override
  final Object err;

  @override
  String toString() {
    return 'ProfileState.error(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _error &&
            const DeepCollectionEquality().equals(other.err, err));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(err));

  @JsonKey(ignore: true)
  @override
  _$errorCopyWith<_error> get copyWith =>
      __$errorCopyWithImpl<_error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Profile profile) loaded,
    required TResult Function(Object err) error,
  }) {
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile)? loaded,
    TResult Function(Object err)? error,
  }) {
    return error?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile)? loaded,
    TResult Function(Object err)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error implements ProfileState {
  const factory _error(Object err) = _$_error;

  Object get err;
  @JsonKey(ignore: true)
  _$errorCopyWith<_error> get copyWith => throw _privateConstructorUsedError;
}
