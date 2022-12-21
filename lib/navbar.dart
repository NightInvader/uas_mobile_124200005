import 'package:flutter/material.dart';
import 'package:uas/saran.dart';
import 'package:uas/main_page.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      MainPage(),
      Saran()

    ];
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.titled,
        backgroundColor: Colors.blue,
        items: [
          TabItem(icon: Icons.home_rounded, title: 'Home'),
          TabItem(icon: Icons.info_outline_rounded, title: 'Saran'),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.blue,
        initialActiveIndex: 0,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
