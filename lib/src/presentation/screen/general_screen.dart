import 'package:flutter/material.dart';
import 'package:marketplace_concept/src/config/app_colors.dart';

import 'home_screen.dart';

class GeneralScreen extends StatefulWidget {
  const GeneralScreen({Key? key}) : super(key: key);

  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {

  final List<Widget> _pages = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen()
  ];
  int _selectedIndex = 0;

  void _changeMenu(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: _pages[_selectedIndex],

        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.voicemail_outlined), label: 'Voucer'),
            BottomNavigationBarItem(
                icon: Icon(Icons.wallet_travel_rounded), label: 'Wallet'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
          currentIndex: _selectedIndex,
          onTap: _changeMenu,
          selectedItemColor: AppColors.appGreen,
          unselectedItemColor: Colors.black38,
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}
