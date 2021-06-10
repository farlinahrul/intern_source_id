import 'package:flutter/material.dart';
import 'package:intern_source_id/theme/TypographyStyle.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Haii Favorite', style: TypographyStyle.captionP,),
      ),
    );
  }
}
