import 'package:flutter/material.dart';
import 'package:intern_source_id/theme/TypographyStyle.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Haii Profile', style: TypographyStyle.captionP),
      ),
    );
  }
}
