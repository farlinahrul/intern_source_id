import 'package:flutter/material.dart';
import 'package:intern_source_id/theme/PaletteColor.dart';

class MagangPage extends StatefulWidget {
  const MagangPage({Key key}) : super(key: key);

  @override
  _MagangPageState createState() => _MagangPageState();
}

class _MagangPageState extends State<MagangPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rekomendasi Magang'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Center(
              child: Text('Kecocokan dengan bidangmu'),
            ),
            ListView.builder(
              itemCount: 2,
                itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: PaletteColor.primary60,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text('Mobile Developer'),
                        Text('PT. Indonesia')
                      ],
                    ),
                  ],
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
