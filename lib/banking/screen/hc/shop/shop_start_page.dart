import 'package:bankingapp/banking/model/BankingModel.dart';
import 'package:bankingapp/banking/screen/hc/shop/shop_1st_page.dart';
import 'package:bankingapp/banking/utils/BankingColors.dart';
import 'package:bankingapp/banking/utils/BankingContants.dart';
import 'package:bankingapp/banking/utils/BankingDataGenerator.dart';
import 'package:bankingapp/banking/utils/BankingImages.dart';
import 'package:bankingapp/banking/utils/BankingWidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';

class ShopStartPage extends StatefulWidget {
  static String tag = '/BankingHome1';

  @override
  ShopStartPageState createState() => ShopStartPageState();
}

class ShopStartPageState extends State<ShopStartPage> {
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
      ShopListWrapper(
        svg: true,
        icon: "assets/svg/Sulpak_Logo.svg",
        title: "Sulpak1",
        color: Colors.black,
        charge: "dsadas",
      ),
      ShopListWrapper(
          svg: true,
          icon: "assets/svg/mechta_logo.svg",
          title: "Мечта1",
          color: Colors.black,
          charge: "dsadas",
          iconColor: Color.fromRGBO(230, 23, 113, 1)),
      ShopListWrapper(
        svg: true,
        icon: "assets/svg/logo_technodom.svg",
        title: "Технодом1",
        charge: "dsadas",
      ),
      ShopListWrapper(
        svg: true,
        icon: "assets/svg/logo_alser.svg",
        title: "Alser1",
        charge: "dsadas",
      ),
      ShopListWrapper(
        svg: true,
        icon: "assets/svg/logo_fora.svg",
        title: "Fora1",
        charge: "dsadas",
      ),
      ShopListWrapper(
        svg: false,
        icon: "assets/png/white_wind.png",
        title: "Белый Ветер1",
        color: Colors.black,
        charge: "dsadas",
      ),
      ShopListWrapper(
        svg: true,
        icon: "assets/svg/evrika_logo.svg",
        title: "Evrika1",
        color: Colors.black,
        charge: "dsadas",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        heroTag: "back_button",
        backgroundColor: color_accent,
        isExtended: true,
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(Icons.arrow_back_ios),
      ),
      backgroundColor: Colors.black,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 200,
              floating: false,
              pinned: true,
              titleSpacing: 0,
              automaticallyImplyLeading: false,
              backgroundColor: innerBoxIsScrolled ? Colors.black : Colors.black,
              actionsIconTheme: IconThemeData(opacity: 0.0),
              title: Container(
                padding: EdgeInsets.fromLTRB(16, 42, 16, 32),
                margin: EdgeInsets.only(bottom: 8, top: 8),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/hc_o_svg_white.svg',
                        width: 50,
                      ),
                      10.width,
                      !innerBoxIsScrolled
                          ? Text(
                              "Покупки",
                              style: TextStyle(
                                color: Banking_TextColorWhite,
                                fontSize: 22,
                                fontFamily: fontRegular,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : Text(
                              "Доступные магазины",
                              style: TextStyle(
                                color: Banking_TextColorWhite,
                                fontSize: 22,
                                fontFamily: fontRegular,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ],
                  ),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Container(
                      height: 250,
                      decoration: BoxDecoration(color: Colors.black
                          // gradient: LinearGradient(begin: Alignment.bottomLeft, end: Alignment.topLeft, colors: <Color>[Banking_Primary, Banking_palColor]),
                          ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(16, 90, 16, 8),
                      padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                      decoration: boxDecorationWithRoundedCorners(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: defaultBoxShadow()),
                      child: Container(
                        height: 130,
                        child: CarouselSlider(
                          options: CarouselOptions(
                            height: MediaQuery.of(context).size.height,
                            viewportFraction: 0.50,
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 100),
                            autoPlay: true,
                            enlargeCenterPage: true,
                          ),
                          items: [
                            Column(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Image.asset(
                                    'assets/png/hc_card_home_card.png',
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Home Card Pro',
                                    style: TextStyle(fontFamily: 'AvantITC'),
                                  ),
                                  flex: 1,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Image.asset(
                                    'assets/png/hc_card_lite.png',
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Home Card Lite',
                                    style: TextStyle(fontFamily: 'AvantITC'),
                                  ),
                                  flex: 1,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Image.asset(
                                    'assets/png/hc_card_sulpak.png',
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Sulpak',
                                    style: TextStyle(fontFamily: 'AvantITC'),
                                  ),
                                  flex: 1,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Image.asset(
                                    'assets/png/hc_card_dos_pro.png',
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'DOS Pro',
                                    style: TextStyle(fontFamily: 'AvantITC'),
                                  ),
                                  flex: 1,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            decoration: BoxDecoration(
              color: Banking_app_Background,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Доступные магазины",
                  style: primaryTextStyle(
                      size: 16,
                      color: Banking_TextColorPrimary,
                      fontFamily: fontRegular),
                ),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: mList2.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    ShopListWrapper data = mList2[index];
                    Widget logoHolder = data.svg
                        ? SvgPicture.asset(data.icon!,
                            height: 30, width: 30, color: data.iconColor)
                        : Image.asset(data.icon!,
                            height: 30, width: 30, color: data.iconColor);

                    return Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.only(top: 8, bottom: 8),
                      decoration: boxDecorationRoundedWithShadow(8,
                          backgroundColor: Banking_whitePureColor,
                          spreadRadius: 0,
                          blurRadius: 0),
                      child: GestureDetector(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Hero(
                              tag: data.title.toString(),
                              child: logoHolder,
                            ),
                            Row(
                              children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(data.title!,
                                        style: primaryTextStyle(
                                            color: data.color, size: 16))),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black.withOpacity(0.20),
                                )
                              ],
                            )
                          ],
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Shop1StPage(
                                heroLogo: logoHolder,
                                svg: data.svg,
                                imagePath: data.icon!,
                                heroLogoTag: data.title.toString(),
                                iconColor: data.iconColor,
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
