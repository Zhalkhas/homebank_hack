import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homebankhack/profile/bloc/profile_bloc.dart';
import 'package:homebankhack/profile/model/profile.dart';
import 'package:homebankhack/util/hc_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: light_accent_color,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: Colors.white));

    return Scaffold(
      backgroundColor: light_accent_color,
      body: Column(
        children: [
          Expanded(
            flex: 25,
            child: Container(
              decoration: const BoxDecoration(
                color: light_background_color,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(17),
                  topRight: Radius.circular(17),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
