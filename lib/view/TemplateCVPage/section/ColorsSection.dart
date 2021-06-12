import 'package:flutter/material.dart';
import 'package:intern_source_id/theme/PaletteColor.dart';

class ColorsSection extends StatefulWidget {
  @override
  _ColorsSectionState createState() => _ColorsSectionState();
}

class _ColorsSectionState extends State<ColorsSection> {
  List _colors = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.pinkAccent,
    Colors.purple,
    Colors.orange,
    Colors.brown,
  ];

  void onTappedBar(int index) {
    if (index != _colors) {
      if (index != 8) {
        setState(() {
          _colors = index as List;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 20,
      child: Center(
        child: ListView.builder(
          shrinkWrap: true,
            itemCount: 8,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: _colors[index]
                  ),
                ),
              );
            }),
      ),
    );
  }
}
