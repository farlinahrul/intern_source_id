import 'package:flutter/material.dart';
import 'package:intern_source_id/theme/TypographyStyle.dart';

class ForumPage extends StatefulWidget {
  @override
  _ForumPageState createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Haii Forum', style: TypographyStyle.captionP),
      ),
    );
  }
}
