// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'camera_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CameraEventTearOff {
  const _$CameraEventTearOff();

  _loadCameras loadCameras() {
    return const _loadCameras();
  }
}

/// @nodoc
const $CameraEvent = _$CameraEventTearOff();

/// @nodoc
mixin _$CameraEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCameras,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCameras,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCameras,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadCameras value) loadCameras,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_loadCameras value)? loadCameras,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadCameras value)? loadCameras,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraEventCopyWith<$Res> {
  factory $CameraEventCopyWith(
          CameraEvent value, $Res Function(CameraEvent) then) =
      _$CameraEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CameraEventCopyWithImpl<$Res> implements $CameraEventCopyWith<$Res> {
  _$CameraEventCopyWithImpl(this._value, this._then);

  final CameraEvent _value;
  // ignore: unused_field
  final $Res Function(CameraEvent) _then;
}

/// @nodoc
abstract class _$loadCamerasCopyWith<$Res> {
  factory _$loadCamerasCopyWith(
          _loadCameras value, $Res Function(_loadCameras) then) =
      __$loadCamerasCopyWithImpl<$Res>;
}

/// @nodoc
class __$loadCamerasCopyWithImpl<$Res> extends _$CameraEventCopyWithImpl<$Res>
    implements _$loadCamerasCopyWith<$Res> {
  __$loadCamerasCopyWithImpl(
      _loadCameras _value, $Res Function(_loadCameras) _then)
      : super(_value, (v) => _then(v as _loadCameras));

  @override
  _loadCameras get _value => super._value as _loadCameras;
}

/// @nodoc

class _$_loadCameras implements _loadCameras {
  const _$_loadCameras();

  @override
  String toString() {
    return 'CameraEvent.loadCameras()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _loadCameras);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCameras,
  }) {
    return loadCameras();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCameras,
  }) {
    return loadCameras?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCameras,
    required TResult orElse(),
  }) {
    if (loadCameras != null) {
      return loadCameras();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadCameras value) loadCameras,
  }) {
    return loadCameras(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_loadCameras value)? loadCameras,
  }) {
    return loadCameras?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadCameras value)? loadCameras,
    required TResult orElse(),
  }) {
    if (loadCameras != null) {
      return loadCameras(this);
    }
    return orElse();
  }
}

abstract class _loadCameras implements CameraEvent {
  const factory _loadCameras() = _$_loadCameras;
}

/// @nodoc
class _$CameraStateTearOff {
  const _$CameraStateTearOff();

  _initial initial() {
    return const _initial();
  }

  _loaded loaded(CameraController controller) {
    return _loaded(
      controller,
    );
  }

  _error error(Object err) {
    return _error(
      err,
    );
  }
}

/// @nodoc
const $CameraState = _$CameraStateTearOff();

/// @nodoc
mixin _$CameraState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CameraController controller) loaded,
    required TResult Function(Object err) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CameraController controller)? loaded,
    TResult Function(Object err)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CameraController controller)? loaded,
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
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res> implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  final CameraState _value;
  // ignore: unused_field
  final $Res Function(CameraState) _then;
}

/// @nodoc
abstract class _$initialCopyWith<$Res> {
  factory _$initialCopyWith(_initial value, $Res Function(_initial) then) =
      __$initialCopyWithImpl<$Res>;
}

/// @nodoc
class __$initialCopyWithImpl<$Res> extends _$CameraStateCopyWithImpl<$Res>
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
    return 'CameraState.initial()';
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
    required TResult Function(CameraController controller) loaded,
    required TResult Function(Object err) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CameraController controller)? loaded,
    TResult Function(Object err)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CameraController controller)? loaded,
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

abstract class _initial implements CameraState {
  const factory _initial() = _$_initial;
}

/// @nodoc
abstract class _$loadedCopyWith<$Res> {
  factory _$loadedCopyWith(_loaded value, $Res Function(_loaded) then) =
      __$loadedCopyWithImpl<$Res>;
  $Res call({CameraController controller});
}

/// @nodoc
class __$loadedCopyWithImpl<$Res> extends _$CameraStateCopyWithImpl<$Res>
    implements _$loadedCopyWith<$Res> {
  __$loadedCopyWithImpl(_loaded _value, $Res Function(_loaded) _then)
      : super(_value, (v) => _then(v as _loaded));

  @override
  _loaded get _value => super._value as _loaded;

  @override
  $Res call({
    Object? controller = freezed,
  }) {
    return _then(_loaded(
      controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController,
    ));
  }
}

/// @nodoc

class _$_loaded implements _loaded {
  const _$_loaded(this.controller);

  @override
  final CameraController controller;

  @override
  String toString() {
    return 'CameraState.loaded(controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _loaded &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller);

  @JsonKey(ignore: true)
  @override
  _$loadedCopyWith<_loaded> get copyWith =>
      __$loadedCopyWithImpl<_loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CameraController controller) loaded,
    required TResult Function(Object err) error,
  }) {
    return loaded(controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CameraController controller)? loaded,
    TResult Function(Object err)? error,
  }) {
    return loaded?.call(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CameraController controller)? loaded,
    TResult Function(Object err)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(controller);
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

abstract class _loaded implements CameraState {
  const factory _loaded(CameraController controller) = _$_loaded;

  CameraController get controller;
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
class __$errorCopyWithImpl<$Res> extends _$CameraStateCopyWithImpl<$Res>
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
    return 'CameraState.error(err: $err)';
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
    required TResult Function(CameraController controller) loaded,
    required TResult Function(Object err) error,
  }) {
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CameraController controller)? loaded,
    TResult Function(Object err)? error,
  }) {
    return error?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CameraController controller)? loaded,
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

abstract class _error implements CameraState {
  const factory _error(Object err) = _$_error;

  Object get err;
  @JsonKey(ignore: true)
  _$errorCopyWith<_error> get copyWith => throw _privateConstructorUsedError;
}
