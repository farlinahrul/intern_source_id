import 'package:flutter/material.dart';
import 'package:intern_source_id/route/RouteTransition.dart';
import 'package:intern_source_id/theme/PaletteColor.dart';
import 'package:intern_source_id/theme/TypographyStyle.dart';
import 'package:intern_source_id/view/DashboardPage/DashboardPage.dart';

import 'component/TapProfile.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletteColor.primarybg,
      appBar: AppBar(
        backgroundColor: PaletteColor.primarybg,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).push(routeTransition(DashboardPage())),
          child: Icon(
            Icons.arrow_back,
            color: PaletteColor.primary,
          ),
        ),
        title: Text(
          'My Profile',
          style: TypographyStyle.button1P,
        ),
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 16),
              child: TextButton(
                onPressed: (){},
                child: Text(
                  "Edit",
                  style: TypographyStyle.button2P.merge(
                    TextStyle(
                      color: PaletteColor.primary,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size(128, 128),
          child: Container(
            alignment: Alignment.topCenter,
            child: Container(
              height: 110.0,
              width: 110.0,
              child: CircleAvatar(
                backgroundColor: PaletteColor.grey40,
              ),
            ),
          ),
        ),
      ),
      body: TabProfile(),
    );
  }
}