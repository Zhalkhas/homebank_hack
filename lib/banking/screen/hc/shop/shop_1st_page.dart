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
      ShopListWrapper(
          svg: true,
          icon: "assets/svg/mechta_logo.svg",
          title: "Мечта",
          color: Colors.black,
          charge: "dsadas",
          iconColor: Color.fromRGBO(230, 23, 113, 1.0)),
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
      ShopListWrapper(
          svg: true,
          icon: "assets/svg/mechta_logo.svg",
          title: "Мечта",
          color: Colors.black,
          charge: "dsadas",
          iconColor: Color.fromRGBO(230, 23, 113, 1)),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: color_accent,
        isExtended: true,
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(Icons.arrow_back_ios),
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
                    Icon(Icons.shopping_cart,
                        color: color_accent, size: 30)
                        .paddingOnly(top: 8, left: 8),
                    Text(widget.heroLogoTag,
                        style: primaryTextStyle(size: 18))
                        .paddingOnly(left: 8, top: 8)
                        .expand(),
                    Icon(Icons.info,
                        color: Banking_greyColor, size: 20)
                        .paddingOnly(right: 8)
                  ],
                ),
              ),
              8.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    decoration: boxDecorationWithRoundedCorners(
                        backgroundColor: color_accent,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.qr_code_scanner,
                            color: Banking_TextColorWhite, size: 24),
                        10.width,
                        Text('Сканировать QR',
                            style: primaryTextStyle(
                                size: 16, color: Banking_TextColorWhite)),
                      ],
                    ),
                  ).expand(),
                  10.width,
                  Container(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    decoration: boxDecorationWithRoundedCorners(
                        backgroundColor: color_accent,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.edit_attributes_rounded,
                            color: Banking_TextColorWhite, size: 24),
                        10.width,
                        Text('Ввести код',
                            style: primaryTextStyle(
                                size: 16, color: Banking_TextColorWhite)),
                      ],
                    ),
                  ).expand(),
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
}
