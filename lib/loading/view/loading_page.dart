import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  late RiveAnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = OneShotAnimation('go');
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const color = Color.fromRGBO(244, 37, 60, 1);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarContrastEnforced: true,
        statusBarColor: color,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: color));

    return Scaffold(
      backgroundColor: color,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: RiveAnimation.asset(
            'assets/anim/loading_logo.riv',
            animations: const ['go'],
            controllers: [_animationController],
          ),
        ),
      ),
    );
  }
}
