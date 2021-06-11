import 'package:flutter/material.dart';
import 'package:intern_source_id/route/RouteTransition.dart';
import 'package:intern_source_id/theme/PaletteColor.dart';
import 'package:intern_source_id/theme/TypographyStyle.dart';

import 'page/CVPage1.dart';

class TemplateCVPage extends StatefulWidget {
  @override
  _TemplateCVPageState createState() => _TemplateCVPageState();
}

class _TemplateCVPageState extends State<TemplateCVPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletteColor.primarybg2,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: PaletteColor.primarybg,
        title: Text('Generator CV', style: TypographyStyle.button1M,),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 32),
                height: 183,
                width: 168,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: PaletteColor.grey40,
                ),
              ),
              Container(margin: EdgeInsets.only(bottom: 8), child: Text('3 Langkah Mudah membuat CV', style: TypographyStyle.subtitle1M,)),
              Column(
                children: [
                  Text('1. Pilih template yang kami sediakan', style: TypographyStyle.paragraphM.merge(TextStyle(color: PaletteColor.grey60))),
                  SizedBox(height: 6),
                  Text('2. Isi sesuai pengalaman yang kamu punya', style: TypographyStyle.paragraphM.merge(TextStyle(color: PaletteColor.grey60))),
                  SizedBox(height: 6),
                  Text('3. Unduh, cetak dan kirim CV kamu', style: TypographyStyle.paragraphM.merge(TextStyle(color: PaletteColor.grey60))),
                ],
              ),
              SizedBox(height: 123,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(routeTransition(CVPage1()));
                },
                child: Container(
                  height: 48,
                  width: 173,
                  decoration: BoxDecoration(
                    color: Color(0xFF001177),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(child: Text('Buat CV', style: TypographyStyle.button1M.merge(TextStyle(color: PaletteColor.primarybg)),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
