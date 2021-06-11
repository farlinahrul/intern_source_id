import 'package:flutter/material.dart';
import 'package:intern_source_id/route/RouteTransition.dart';
import 'package:intern_source_id/theme/PaletteColor.dart';
import 'package:intern_source_id/theme/TypographyStyle.dart';
import 'package:intern_source_id/view/TemplateCVPage/section/ColorsSection.dart';

class CVPage1 extends StatefulWidget {
  @override
  _CVPage1State createState() => _CVPage1State();
}

class _CVPage1State extends State<CVPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: PaletteColor.primarybg,
        title: Text(
          'Generator CV',
          style: TypographyStyle.button1M,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 26),
                child: Center(
                  child: Text(
                    'Pilih Template dan Warna CV Kamu!',
                    style: TypographyStyle.subtitle1M,
                  ),
                ),
              ),
              ColorsSection(),
              SizedBox(height: 47,),
              Container(
                margin: EdgeInsets.only(bottom: 47),
                height: 381,
                width: 300,
                decoration: BoxDecoration(
                  color: PaletteColor.grey40
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.only(bottom: 91),
                  height: 48,
                  width: 173,
                  decoration: BoxDecoration(
                    color: Color(0xFF001177),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(child: Text('Piluh Template', style: TypographyStyle.button1M.merge(TextStyle(color: PaletteColor.primarybg)),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
