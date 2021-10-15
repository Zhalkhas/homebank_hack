import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homebankhack/qr/bloc/camera_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ScanQrPage extends StatelessWidget {
  const ScanQrPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CameraBloc>(
        create: (context) => CameraBloc(),
        child: Builder(
          builder: (context) => BlocListener<CameraBloc, CameraState>(
            listener: (context, state) => state.maybeWhen(
              orElse: () {},
              qrDetected: (qrCode) =>
                  Navigator.of(context).push(MaterialPageRoute<Scaffold>(
                builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: const Text('QR'),
                  ),
                  body: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Обнаружен QR: $qrCode'),
                      QrImage(data: qrCode)
                    ],
                  ),
                ),
              )),
            ),
            child: BlocBuilder<CameraBloc, CameraState>(
              buildWhen: (previous, current) => current.maybeWhen(
                  orElse: () => true, qrDetected: (_) => false),
              builder: (context, state) => state.maybeWhen(
                orElse: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (controller) {
                  final size = MediaQuery.of(context).size;
                  return SizedBox(
                    width: double.infinity,
                    child: CameraPreview(
                      controller,
                      child: Center(
                        child: Container(
                          width: size.width / 2,
                          height: size.width / 2,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 5),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                error: (err) => Center(
                  child: Text('Ooooops some error happened $err'),
                ),
              ),
            ),
          ),
        ));
  }
}
