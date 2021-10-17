import 'package:bankingapp/banking/screen/BankingHome1.dart';
import 'package:bankingapp/banking/screen/BankingMenu.dart';
import 'package:bankingapp/banking/screen/BankingPayment.dart';
import 'package:bankingapp/banking/screen/BankingSaving.dart';
import 'package:bankingapp/banking/screen/PurchaseMoreScreen.dart';
import 'package:bankingapp/banking/screen/hc/shop/shop_start_page.dart';
import 'package:bankingapp/banking/utils/BankingBottomNavigationBar.dart';
import 'package:bankingapp/banking/utils/BankingColors.dart';
import 'package:bankingapp/banking/utils/BankingImages.dart';
import 'package:bankingapp/banking/utils/BankingStrings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'BankingInvoiceDetail.dart';

class BankingDashboard extends StatefulWidget {
  static var tag = "/BankingDashboard";

  @override
  _BankingDashboardState createState() => _BankingDashboardState();
}

class _BankingDashboardState extends State<BankingDashboard> {
  var selectedIndex = 0;
  var pages = [
    BankingHome1(),
    PurchaseMoreScreen(),
    BankingSaving(),
    BankingMenu(),
  ];

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          systemNavigationBarContrastEnforced: false,
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white),
    );

    return Scaffold(
      backgroundColor: Banking_app_Background,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 65,
        height: 65,
        child: FloatingActionButton(
          backgroundColor: color_accent,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ShopStartPage()));
          },
          elevation: 2,
          child: const Icon(
            Icons.shopping_cart,
            size: 35,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 12,
        elevation: 3,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.chartLine,
                color: color_accent,
              ),
              onPressed: () {


              },
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.creditCard,
                color: color_accent,
              ),
              onPressed: () {


              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
            ),
            IconButton(
              icon: const Icon(
                Icons.doorbell,
                color: color_accent,
              ),
              onPressed: () {


              },
            ),
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: color_accent,
              ),
              onPressed: () {


              },
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BankingBottomNavigationBar(
      //   selectedItemColor: Banking_Primary,
      //   unselectedItemColor: Banking_greyColor.withOpacity(0.5),
      //   items: <BankingBottomNavigationBarItem>[
      //     BankingBottomNavigationBarItem(icon: Banking_ic_Home, title: Text(Banking_lbl_Home)),
      //     BankingBottomNavigationBarItem(icon: Banking_ic_Transfer, title: Text(Banking_lbl_Transfer)),
      //     BankingBottomNavigationBarItem(icon: Banking_ic_Payment, title: Text(Banking_lbl_Payment)),
      //     BankingBottomNavigationBarItem(icon: Banking_ic_Saving, title: Text(Banking_lbl_Saving)),
      //     BankingBottomNavigationBarItem(icon: Banking_ic_Menu, title: Text(Banking_lbl_Menu)),
      //   ],
      //   currentIndex: selectedIndex,
      //   unselectedIconTheme: IconThemeData(color: Banking_greyColor.withOpacity(0.5), size: 28),
      //   selectedIconTheme: IconThemeData(color: Banking_Primary, size: 28),
      //   onTap: _onItemTapped,
      //   type: BankingBottomNavigationBarType.fixed,
      // ),
      body: SafeArea(
        child: pages[selectedIndex],
      ),
    );
  }
}
