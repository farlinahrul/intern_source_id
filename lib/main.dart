import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intern_source_id/view/DashboardPage/DashboardPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,

      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Intern Source',
        home: DashboardPage(),
      ),
    );
  }
}
