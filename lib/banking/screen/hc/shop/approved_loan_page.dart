import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:bankingapp/banking/model/BankingModel.dart';
import 'package:bankingapp/banking/utils/BankingColors.dart';
import 'package:bankingapp/banking/utils/BankingDataGenerator.dart';
import 'package:bankingapp/banking/utils/BankingImages.dart';
import 'package:bankingapp/banking/utils/BankingWidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ApprovedQrPage extends StatefulWidget {
  const ApprovedQrPage({
    Key? key,
  }) : super(key: key);

  @override
  ApprovedQrPageState createState() => ApprovedQrPageState();
}

class ApprovedQrPageState extends State<ApprovedQrPage> {
  bool approved = false;
  bool loadingFlag = true;
  late Widget current;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(
          "Кредит одобрен",
          style: TextStyle(fontSize: 26),
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarContrastEnforced: false,
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.black,
        ),
      ),
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          color: Banking_backgroundFragmentColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
        ),
        width: context.width(),
        height: context.height(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Image.asset('assets/png/qr-code-styling.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Для завершения покупки, покажите QR код кассиру",
              style: TextStyle(
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
