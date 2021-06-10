import 'package:flutter/material.dart';
import 'package:intern_source_id/theme/PaletteColor.dart';
import 'package:intern_source_id/theme/TypographyStyle.dart';

import 'ProfilePage/ProfilePage.dart';
import 'FavoritePage/FavoritePage.dart';
import 'ForumPage/ForumPage.dart';
import 'HomePage/HomePage.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _bottomNavIndex = 0;

  void onTappedBar(int index) {
    if (index != _bottomNavIndex) {
      if (index != 4) {
        setState(() {
          _bottomNavIndex = index;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [
      HomePage(),
      ForumPage(),
      FavoritePage(),
      ProfilePage()
    ];

    return Scaffold(
      body: _children[_bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        onTap: onTappedBar,
        selectedLabelStyle: TypographyStyle.miniP,
        unselectedLabelStyle: TypographyStyle.miniP,
        selectedItemColor: PaletteColor.black,
        unselectedItemColor: PaletteColor.grey60,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              color: _bottomNavIndex == 0
                  ? PaletteColor.primary
                  : PaletteColor.grey60,
            ),
          ),
          BottomNavigationBarItem(
            label: "Forum",
            icon: Icon(
              Icons.schedule,
              color: _bottomNavIndex == 1
                  ? PaletteColor.primary
                  : PaletteColor.grey60,
            ),
          ),
          BottomNavigationBarItem(
            label: "Favorite",
            icon: Icon(
              Icons.favorite_outlined,
              color: _bottomNavIndex == 2
                  ? PaletteColor.primary
                  : PaletteColor.grey60,
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(
              Icons.supervised_user_circle_outlined,
              color: _bottomNavIndex == 3
                  ? PaletteColor.primary
                  : PaletteColor.grey60,
            ),
          ),
        ],
      ),
    );
  }
}
