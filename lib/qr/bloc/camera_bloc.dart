import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:rxdart/rxdart.dart';

part 'camera_bloc.freezed.dart';

part 'camera_event.dart';

part 'camera_state.dart';

class CameraBloc extends Bloc<CameraEvent, CameraState> {
  CameraBloc() : super(const CameraState.initial()) {
    on<CameraEvent>(
      (event, emit) => event.when(
          loadCameras: () async {
            try {
              final cameras = await availableCameras();
              final camera = cameras.firstWhere(
                (element) => element.lensDirection == CameraLensDirection.back,
                orElse: () => cameras.first,
              );
              final controller =
                  CameraController(camera, _resolution, enableAudio: false);
              await controller.initialize();
              await controller.startImageStream(imageStream.add);
              emit(CameraState.loaded(controller));
              imageStream.stream
                  .throttleTime(const Duration(milliseconds: 300))
                  .transform<List<Barcode>>(
                      QrDetectorTransformer(camera: camera))
                  .listen(_onQrDetected);
            } catch (e) {
              emit(CameraState.error(e));
            }
          },
          detectedQR: (String qrCode) => emit(CameraState.qrDetected(qrCode))),
    );
    add(const CameraEvent.loadCameras());
  }

  final ResolutionPreset _resolution = ResolutionPreset.medium;
  final StreamController<CameraImage> imageStream = StreamController();

  void _onQrDetected(List<Barcode> barcodes) {
    if (barcodes.isNotEmpty) {
      print('barcodes $barcodes');
    }
    final qrCodes = barcodes.map((e) => e.value.rawValue).whereNotNull();
    if (qrCodes.isNotEmpty) {
      add(CameraEvent.detectedQR(qrCodes.first));
    } else {}
  }
}

class QrDetectorTransformer
    extends StreamTransformerBase<CameraImage, List<Barcode>> {
  QrDetectorTransformer({required this.camera});

  final barcodeScanner = GoogleMlKit.vision.barcodeScanner();
  final CameraDescription camera;

  @override
  Stream<List<Barcode>> bind(Stream<CameraImage> stream) {
    return stream
        .map(_toInputImage)
        .asyncMap(barcodeScanner.processImage)
        .where((event) => event.isNotEmpty)
        .map((event) {
      print(event);
      return event;
    });
  }

  InputImage _toInputImage(
    CameraImage cameraImage,
  ) {
    print('image');
    // final camera; // your camera instance
    final allBytes = WriteBuffer();
    for (final plane in cameraImage.planes) {
      allBytes.putUint8List(plane.bytes);
    }
    final bytes = allBytes.done().buffer.asUint8List();

    final imageSize =
        Size(cameraImage.width.toDouble(), cameraImage.height.toDouble());

    final imageRotation =
        InputImageRotationMethods.fromRawValue(camera.sensorOrientation) ??
            InputImageRotation.Rotation_0deg;

    late final InputImageFormat inputImageFormat;
    if (cameraImage.format.raw is int) {
      inputImageFormat =
          InputImageFormatMethods.fromRawValue(cameraImage.format.raw as int) ??
              InputImageFormat.NV21;
    } else {
      inputImageFormat = InputImageFormat.NV21;
    }

    final planeData = cameraImage.planes.map(
      (Plane plane) {
        return InputImagePlaneMetadata(
          bytesPerRow: plane.bytesPerRow,
          height: plane.height,
          width: plane.width,
        );
      },
    ).toList();

    final inputImageData = InputImageData(
      size: imageSize,
      imageRotation: imageRotation,
      inputImageFormat: inputImageFormat,
      planeData: planeData,
    );

    return InputImage.fromBytes(bytes: bytes, inputImageData: inputImageData);
  }
}
