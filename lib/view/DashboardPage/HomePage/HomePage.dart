import 'package:flutter/material.dart';
import 'package:intern_source_id/theme/TypographyStyle.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Haii Homepage', style: TypographyStyle.captionP),
      ),
    );
  }
}
