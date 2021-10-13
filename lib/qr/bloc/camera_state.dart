part of 'camera_bloc.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState.initial() = _initial;

  const factory CameraState.loaded(CameraController controller) = _loaded;

  const factory CameraState.error(Object err) = _error;
}
