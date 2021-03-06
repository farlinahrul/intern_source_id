import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Widget indicatorLoad() {
  return SpinKitFadingCircle(
    size: 45,
    itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xff0177FB),
          shape: BoxShape.circle,
        ),
      );
    },
  );
}