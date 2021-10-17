import 'package:bankingapp/banking/screen/BankingWalkThrough.dart';
import 'package:bankingapp/banking/utils/BankingColors.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:rive/rive.dart';

import '../BankingDashboard.dart';

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
    _animationController = OneShotAnimation('go');
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarContrastEnforced: false,
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.black));

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    child: RiveAnimation.asset(
                      'assets/anim/loading_logo.riv',
                      animations: const ['go'],
                      controllers: [_animationController],
                    ),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 5,
                          height: MediaQuery.of(context).size.width / 5,
                          child: FlareActor(
                            "assets/anim/finger.flr",
                            alignment: Alignment.center,
                            fit: BoxFit.contain,
                            animation: "loop",
                          ),
                        ),
                        onLongPress: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => BankingDashboard(),
                            ),
                          );
                        },
                      ),
                      Text(
                        'Войти',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  )
                ]),
          )),
    );
  }
}
