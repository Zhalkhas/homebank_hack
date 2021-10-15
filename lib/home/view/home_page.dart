import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:homebankhack/profile/profile.dart';
import 'package:homebankhack/qr/qr.dart';
import 'package:homebankhack/util/hc_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: light_accent_color,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: Colors.white));
    return Scaffold(
      backgroundColor: light_background_color,
      // appBar: AppBar(
      //   elevation: 0,
      //   leading: const Padding(
      //     padding: EdgeInsets.only(left: 15),
      //     child: CircleAvatar(
      //       backgroundColor: light_background_color,
      //       backgroundImage: NetworkImage(
      //           'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200'),
      //     ),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 10),
      //       child: IconButton(
      //         onPressed: () {},
      //         icon: const Icon(
      //           FontAwesomeIcons.search,
      //         ),
      //       ),
      //     )
      //   ],
      // ),

      body: NestedScrollView(
        physics: const NeverScrollableScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200,
              elevation: 0,
              leading: const Padding(
                padding: EdgeInsets.only(left: 15),
                child: CircleAvatar(
                  backgroundColor: light_background_color,
                  backgroundImage: NetworkImage(
                      'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200'),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.search,
                    ),
                  ),
                )
              ],
              pinned: true,
              collapsedHeight: 80,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: const Text('120120\$',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Gilroy'
                    )),
                background: Container(
                  color: light_accent_color,
                ),
              ),
            ),
          ];
        },
        body: IndexedStack(
          index: currentPage,
          children: const [
            ProfilePage(),
            ScanQrPage(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 65,
        height: 65,
        child: FloatingActionButton(
          onPressed: () {},
          elevation: 2,
          child: const Icon(
            FontAwesomeIcons.shoppingCart,
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
                FontAwesomeIcons.user,
                color: light_accent_color,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.creditCard,
                color: light_accent_color,
              ),
              onPressed: () {},
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.bell,
                color: light_accent_color,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.cog,
                color: light_accent_color,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
