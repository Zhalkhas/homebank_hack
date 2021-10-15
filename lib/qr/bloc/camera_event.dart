part of 'camera_bloc.dart';

@freezed
class CameraEvent with _$CameraEvent {
  const factory CameraEvent.loadCameras() = _loadCameras;

  const factory CameraEvent.detectedQR(String qrCode) = _detectedQR;
}
