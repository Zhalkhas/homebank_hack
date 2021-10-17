import 'dart:convert';
import 'dart:io';
import 'package:bankingapp/banking/screen/hc/shop/approved_loan_page.dart';
import 'package:http/http.dart' as http;

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

class Shop1StPage extends StatefulWidget {
  static String tag = '/BankingHome1';
  final Widget heroLogo;
  final String heroLogoTag;
  final String imagePath;
  final bool svg;
  final Color? iconColor;

  const Shop1StPage({
    Key? key,
    required this.heroLogo,
    required this.heroLogoTag,
    required this.imagePath,
    required this.svg,
    this.iconColor,
  }) : super(key: key);

  @override
  Shop1StPageState createState() => Shop1StPageState();
}

class Shop1StPageState extends State<Shop1StPage> {
  int currentIndexPage = 0;
  int? pageLength;

  late List<BankingHomeModel> mList1;
  late List<ShopListWrapper> mList2;

  @override
  void initState() {
    super.initState();
    currentIndexPage = 0;
    pageLength = 3;
    mList1 = bankingHomeList1();
    mList2 = [
      ShopListWrapper(
        svg: true,
        icon: "assets/svg/Sulpak_Logo.svg",
        title: "Sulpak",
        color: Colors.black,
        charge: "dsadas",
      ),
      ShopListWrapper(svg: true, icon: "assets/svg/mechta_logo.svg", title: "Мечта", color: Colors.black, charge: "dsadas", iconColor: Color.fromRGBO(230, 23, 113, 1.0)),
      ShopListWrapper(
        svg: true,
        icon: "assets/svg/logo_technodom.svg",
        title: "Технодом",
        charge: "dsadas",
      ),
      ShopListWrapper(
        svg: true,
        icon: "assets/svg/logo_alser.svg",
        title: "Alser",
        charge: "dsadas",
      ),
      ShopListWrapper(
        svg: true,
        icon: "assets/svg/logo_fora.svg",
        title: "Fora",
        charge: "dsadas",
      ),
      ShopListWrapper(
        svg: false,
        icon: "assets/png/white_wind.png",
        title: "Белый Ветер",
        color: Colors.black,
        charge: "dsadas",
      ),
      ShopListWrapper(
        svg: true,
        icon: "assets/svg/evrika_logo.svg",
        title: "Evrika",
        color: Colors.black,
        charge: "dsadas",
      ),
      ShopListWrapper(
        svg: true,
        icon: "assets/svg/Sulpak_Logo.svg",
        title: "Sulpak",
        color: Colors.black,
        charge: "dsadas",
      ),
      ShopListWrapper(svg: true, icon: "assets/svg/mechta_logo.svg", title: "Мечта", color: Colors.black, charge: "dsadas", iconColor: Color.fromRGBO(230, 23, 113, 1)),
      ShopListWrapper(
        svg: true,
        icon: "assets/svg/logo_technodom.svg",
        title: "Технодом",
        charge: "dsadas",
      ),
      ShopListWrapper(
        svg: true,
        icon: "assets/svg/logo_alser.svg",
        title: "Alser",
        charge: "dsadas",
      ),
      ShopListWrapper(
        svg: true,
        icon: "assets/svg/logo_fora.svg",
        title: "Fora",
        charge: "dsadas",
      ),
      ShopListWrapper(
        svg: false,
        icon: "assets/png/white_wind.png",
        title: "Белый Ветер",
        color: Colors.black,
        charge: "dsadas",
      ),
      ShopListWrapper(
        svg: true,
        icon: "assets/svg/evrika_logo.svg",
        title: "Evrika",
        color: Colors.black,
        charge: "dsadas",
      ),
    ];
  }

  late Barcode result;
  late QRViewController controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  var cartEntries = {};
  bool scanned = false;

  @override
  void reassemble() {
    super.reassemble();
    if (controller != null) {
      if (Platform.isAndroid) {
        controller.pauseCamera();
      } else if (Platform.isIOS) {
        controller.resumeCamera();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget logo = widget.svg
        ? SvgPicture.asset(
            widget.imagePath,
            height: 50,
            width: MediaQuery.of(context).size.width * 0.8,
            color: widget.iconColor,
          )
        : Image.asset(
            widget.imagePath,
            height: 50,
            width: MediaQuery.of(context).size.width * 0.8,
            color: widget.iconColor,
          );

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Hero(tag: widget.heroLogoTag, child: logo),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: color_accent,
            heroTag: "back_back_button",
            isExtended: true,
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            backgroundColor: color_accent,
            isExtended: true,
            heroTag: "cart_button",
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: padding, top: avatarRadius + padding, right: padding, bottom: padding),
                            margin: EdgeInsets.only(top: avatarRadius),
                            decoration: BoxDecoration(shape: BoxShape.rectangle, color: Colors.white, borderRadius: BorderRadius.circular(padding), boxShadow: [
                              BoxShadow(color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
                            ]),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                  width: 250,
                                  height: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(
                                    15,
                                  ))),
                                  child: ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: cartEntries.keys.length,
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemBuilder: (BuildContext context, int index) {
                                      var mapVars = cartEntries.values.elementAt(index);
                                      return Container(
                                        margin: EdgeInsets.only(top: 8, bottom: 8),
                                        padding: EdgeInsets.all(8),
                                        decoration: boxDecorationWithShadow(backgroundColor: Banking_whitePureColor, borderRadius: BorderRadius.circular(10)),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              child: mapVars['img_url'] != null ? Image.network(mapVars['img_url'], height: 50, width: 50, fit: BoxFit.fill) : Container(),
                                            ).center(),
                                            10.width,
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("${mapVars['name']}",
                                                    style: primaryTextStyle(
                                                      color: Banking_TextColorPrimary,
                                                      size: 18,
                                                    )),
                                                8.height,
                                                Text("Цена: ${mapVars['price']}", style: primaryTextStyle(color: Banking_TextColorSecondary, size: 18)),
                                                2.height,
                                                Text("Код товара: ${mapVars['sku']}", style: primaryTextStyle(color: Banking_TextColorSecondary, size: 18)),
                                              ],
                                            ).expand(),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  cartEntries.isEmpty ? "Корзина пуста" : "В корзине ${cartEntries.values.length} товаров на сумму ${cartEntries.values.map((e) => e['price']).reduce((value, element) => value + element)}",
                                  style: TextStyle(fontSize: 14),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 22,
                                ),
                                cartEntries.isEmpty
                                    ? Container()
                                    : Align(
                                        alignment: Alignment.bottomCenter,
                                        child: FlatButton(
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(builder: (context) => ApprovedQrPage()));
                                            },
                                            child: Text(
                                              "Оформить кредит",
                                              style: TextStyle(fontSize: 18),
                                            )),
                                      ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: FlatButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        "Назад",
                                        style: TextStyle(fontSize: 18),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: padding,
                            right: padding,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: avatarRadius,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(avatarRadius)),
                                  child: SvgPicture.asset(
                                    "assets/svg/hc_o_svg_red.svg",
                                    width: avatarRadius,
                                    height: avatarRadius,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).then((boolVal) {
                if (boolVal != null) {
                  if (boolVal) {}
                }
              });
            },
            child: Icon(Icons.add_shopping_cart),
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
        padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
        decoration: BoxDecoration(
            color: Banking_app_Background,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            boxShadow: defaultBoxShadow()),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: context.width(),
                child: Row(
                  children: [
                    Icon(Icons.shopping_cart, color: color_accent, size: 30).paddingOnly(top: 8, left: 8),
                    Text(widget.heroLogoTag, style: primaryTextStyle(size: 18)).paddingOnly(left: 8, top: 8),
                    Icon(Icons.info, color: Banking_greyColor, size: 20).paddingOnly(right: 8),
                  ],
                ),
              ),
              8.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: GestureDetector(
                    child: Container(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      decoration: boxDecorationWithRoundedCorners(backgroundColor: color_accent, borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.qr_code_scanner, color: Banking_TextColorWhite, size: 24),
                          10.width,
                          Text('Сканировать QR', style: primaryTextStyle(size: 16, color: Banking_TextColorWhite)),
                        ],
                      ),
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 0,
                              backgroundColor: Colors.transparent,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(left: padding, top: avatarRadius + padding, right: padding, bottom: padding),
                                    margin: EdgeInsets.only(top: avatarRadius),
                                    decoration: BoxDecoration(shape: BoxShape.rectangle, color: Colors.white, borderRadius: BorderRadius.circular(padding), boxShadow: [
                                      BoxShadow(color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
                                    ]),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Container(
                                          width: 250,
                                          height: 250,
                                          child: SizedBox(
                                            width: 250,
                                            height: 250,
                                            child: Stack(
                                              fit: StackFit.expand,
                                              children: [
                                                QRView(
                                                  key: qrKey,
                                                  onQRViewCreated: (controller) {
                                                    this.controller = controller;
                                                    controller.scannedDataStream.listen((scanData) {
                                                      if (!scanned) {
                                                        if (!cartEntries.containsKey(scanData.code)) {
                                                          setState(() {
                                                            result = scanData;
                                                            if (widget.heroLogoTag == "Sulpak") {
                                                              fetchSulpakData(result.code).then(
                                                                (resp) {
                                                                  var r = jsonDecode(resp.body.toString());
                                                                  var name = r['name'];
                                                                  var price = r['price'];
                                                                  var sku = r['sku'];
                                                                  var img_url = r['img_url'];
                                                                  Navigator.of(context).pop(
                                                                    {'name': name, 'price': price, 'sku': sku, 'img_url': img_url, 'scandata': scanData.code},
                                                                  );
                                                                },
                                                              );
                                                            }
                                                            print("${result.code}");
                                                          });
                                                        }
                                                        scanned = true;
                                                      }
                                                    });
                                                  },
                                                ),
                                                FlareActor(
                                                  "assets/anim/qrscan.flr",
                                                  fit: BoxFit.cover,
                                                  animation: "scan",
                                                )
                                              ],
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(
                                            15,
                                          ))),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Наведите камеру на QR или штрих код товара",
                                          style: TextStyle(fontSize: 14),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 22,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: FlatButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                "Отмена",
                                                style: TextStyle(fontSize: 18),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: padding,
                                    right: padding,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: avatarRadius,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(avatarRadius)),
                                          child: SvgPicture.asset(
                                            "assets/svg/hc_o_svg_red.svg",
                                            width: avatarRadius,
                                            height: avatarRadius,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).then((value) {
                        if (value != null) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  elevation: 0,
                                  backgroundColor: Colors.transparent,
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: padding,
                                          top: avatarRadius + padding,
                                          right: padding,
                                          bottom: padding,
                                        ),
                                        margin: EdgeInsets.only(top: avatarRadius),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(padding),
                                          boxShadow: [
                                            BoxShadow(color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
                                          ],
                                        ),
                                        child: SizedBox(
                                          width: 250,
                                          height: 400,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Container(
                                                child: Column(
                                                  children: [
                                                    Text("Название ${value['name']}"),
                                                    Text("Цена ${value['price'].toString()}"),
                                                    Text("Код: ${value['sku']}"),
                                                    SizedBox(
                                                      width: 100,
                                                      height: 100,
                                                      child: Image.network(value['img_url']),
                                                    )
                                                  ],
                                                ),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(
                                                  15,
                                                ))),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "Добавить в корзину?",
                                                style: TextStyle(fontSize: 14),
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(
                                                height: 22,
                                              ),
                                              Align(
                                                alignment: Alignment.bottomCenter,
                                                child: FlatButton(
                                                    onPressed: () {
                                                      scanned = false;
                                                      cartEntries.putIfAbsent(value['scandata'], () => value);
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: Text(
                                                      "Подтвердить",
                                                      style: TextStyle(fontSize: 18),
                                                    )),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomCenter,
                                                child: FlatButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: Text(
                                                      "Отмена",
                                                      style: TextStyle(fontSize: 18),
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: padding,
                                        right: padding,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: avatarRadius,
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.all(Radius.circular(avatarRadius)),
                                              child: SvgPicture.asset(
                                                "assets/svg/hc_o_svg_red.svg",
                                                width: avatarRadius,
                                                height: avatarRadius,
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        }
                      });
                    },
                  )),
                  10.width,
                  Expanded(
                      child: GestureDetector(
                    child: Container(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      decoration: boxDecorationWithRoundedCorners(backgroundColor: color_accent, borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(Icons.edit_attributes_rounded, color: Banking_TextColorWhite, size: 24),
                          10.width,
                          Text('Ввести код', style: primaryTextStyle(size: 16, color: Banking_TextColorWhite)),
                        ],
                      ),
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 0,
                              backgroundColor: Colors.transparent,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(left: padding, top: avatarRadius + padding, right: padding, bottom: padding),
                                    margin: EdgeInsets.only(top: avatarRadius),
                                    decoration: BoxDecoration(shape: BoxShape.rectangle, color: Colors.white, borderRadius: BorderRadius.circular(padding), boxShadow: [
                                      BoxShadow(color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
                                    ]),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Container(
                                          child: TextField(
                                            cursorColor: Colors.white,
                                            style: TextStyle(color: Colors.white),
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: color_accent,
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                                borderRadius: BorderRadius.circular(50),
                                              ),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(
                                            15,
                                          ))),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Введите код товара",
                                          style: TextStyle(fontSize: 14),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 22,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: FlatButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                "Подтвердить",
                                                style: TextStyle(fontSize: 18),
                                              )),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: FlatButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                "Отмена",
                                                style: TextStyle(fontSize: 18),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: padding,
                                    right: padding,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: avatarRadius,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(avatarRadius)),
                                          child: SvgPicture.asset(
                                            "assets/svg/hc_o_svg_red.svg",
                                            width: avatarRadius,
                                            height: avatarRadius,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                  )),
                ],
              ).paddingAll(16),
              CarouselSlider(
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height,
                  viewportFraction: 0.95,
                  autoPlayAnimationDuration: const Duration(milliseconds: 100),
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
                items: [
                  Container(
                    height: MediaQuery.of(context).size.width,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width,
                          child: FlareActor(
                            "assets/anim/cart.flr",
                            alignment: Alignment.center,
                            fit: BoxFit.contain,
                            animation: "newproductv2",
                          ),
                        ),
                        Text(
                          "Добавьте товар в корзину с помощью скана или ручного ввода кода товара",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset('assets/png/qr-code-styling.png'),
                              FlareActor(
                                "assets/anim/fire-red.flr",
                                alignment: Alignment.center,
                                fit: BoxFit.contain,
                                animation: "explode",
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "В случае одобрения вы получите QR метку, привязанную к корзине",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width,
                          child: FlareActor(
                            "assets/anim/qr-success.flr",
                            alignment: Alignment.center,
                            fit: BoxFit.contain,
                            animation: "scan",
                          ),
                        ),
                        Text(
                          "Покажите QR метку кассиру для заверешения покупки",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static const double padding = 20;
  static const double avatarRadius = 45;

  void _onQRViewCreated(QRViewController controller) {}

  Future<http.Response> fetchSulpakData(String title) async {
    return http.post(
      Uri.parse('http://35.230.133.58:8080/qr'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'qr': title,
      }),
    );
  }

  @override
  void dispose() {
    if (controller != null) {
      controller.dispose();
    }
    super.dispose();
  }
}
