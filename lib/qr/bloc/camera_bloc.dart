import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'camera_bloc.freezed.dart';

part 'camera_event.dart';

part 'camera_state.dart';

class CameraBloc extends Bloc<CameraEvent, CameraState> {
  CameraBloc() : super(const CameraState.initial()) {
    on<CameraEvent>(
      (event, emit) => event.when(loadCameras: () async {
        try {
          final cameras = await availableCameras();
          final camera = cameras.firstWhere(
            (element) => element.lensDirection == CameraLensDirection.back,
            orElse: () => cameras.first,
          );
          final controller =
              CameraController(camera, _resolution, enableAudio: false);
          await controller.initialize();
          emit(CameraState.loaded(controller));
        } catch (e) {
          emit(CameraState.error(e));
        }
      }),
    );
    add(const CameraEvent.loadCameras());
  }

  final ResolutionPreset _resolution = ResolutionPreset.high;
}
