import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intern_source_id/ui/widgets/IndicatorLoad.dart';

import 'LoginPage.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 3), (t) {
      print('time ${t}');
      setState(() {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => LoginPage()));
      });
      t.cancel();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Image.asset('assets/images/logo.png'),
            ),
            // Image.asset('assets/images/load.png'),
            Expanded(
              flex: 2,
              child: indicatorLoad(),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
