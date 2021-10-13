
import 'package:flutter/material.dart';
import 'package:homebankhack/profile/profile.dart';
import 'package:homebankhack/qr/qr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: const [
          ScanQrPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => currentPage = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'Scan QR'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Profile'),
        ],
        currentIndex: currentPage,
      ),
    );
  }
}
