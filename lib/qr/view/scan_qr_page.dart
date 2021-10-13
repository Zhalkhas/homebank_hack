import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homebankhack/qr/bloc/camera_bloc.dart';

class ScanQrPage extends StatelessWidget {
  const ScanQrPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CameraBloc>(
        create: (context) => CameraBloc(),
        child: Builder(
          builder: (context) => BlocBuilder<CameraBloc, CameraState>(
            builder: (context, state) => state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (controller) {
                print('controller $controller ${controller.description}');
                return CameraPreview(controller);
              },
              error: (err) => Center(
                child: Text('Ooooops some error happened $err'),
              ),
            ),
          ),
        ));
  }
}
