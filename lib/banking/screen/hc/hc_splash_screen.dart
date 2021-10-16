import 'package:bankingapp/banking/screen/BankingWalkThrough.dart';
import 'package:bankingapp/banking/utils/BankingColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:rive/rive.dart';

class HomeCreditSplashScreen extends StatefulWidget {
  const HomeCreditSplashScreen({Key? key}) : super(key: key);

  @override
  State<HomeCreditSplashScreen> createState() => _HomeCreditSplashScreenState();
}

class _HomeCreditSplashScreenState extends State<HomeCreditSplashScreen> {
  late final RiveAnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = OneShotAnimation('go', onStart: () {
      Future<void>.delayed(const Duration(seconds: 1))
          .then((_) => Navigator.of(context).pushReplacement(
        MaterialPageRoute<BankingWalkThrough>(
            builder: (context) => BankingWalkThrough()),
      ));
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarContrastEnforced: true,
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.black));

    return Scaffold(
      backgroundColor: Colors.black,
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
