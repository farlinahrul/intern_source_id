import 'package:flutter/material.dart';
import 'package:intern_source_id/theme/PaletteColor.dart';
import 'package:intern_source_id/theme/TypographyStyle.dart';

class TabProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: PaletteColor.primarybg,
          elevation: .5,
          bottom: PreferredSize(
            preferredSize: Size(20, 20),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24
              ),
              child: TabBar(
                labelStyle: TypographyStyle.subtitle2M,
                labelColor: PaletteColor.text,
                indicatorColor: PaletteColor.primary,
                indicatorWeight: 3,
                tabs: [
                  Tab(text: 'General'),
                  Tab(text: 'Contact'),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            general(),
            contact(),
          ],
        ),
      ),
    );
  }

  ListView general() {
    return ListView(
      padding: EdgeInsets.only(bottom: 24),
      children: [
        _list("Nama Lengkap", "Muhammad"),
        _list("Username", "@Muhammad"),
        _list("Gender", "Male"),
        _list("Birth Place and Date", "Malang, 20 Mei 2020"),
        _list("Address Home", "Jalan Raya Malangsuko No.17 Kecamatan Tumpang Kabupaten Malang, Jawa Timur, Indonesia"),
        _list("Address Now", "Jalan Raya Tegalgondo RT.04 RW.02 Dinoyo, Malang, Jawa Timur"),
        _list("Keahlian dan Rekomendasi Keahlian", ""),
      ],

    );
  }

  ListView contact() {
    return ListView(
      padding: const EdgeInsets.only(bottom: 24),
      children: [
        _list("Email", "muhammad@gmail.com"),
        _list("Phone", "01234567890"),
        _list("Facebook", "@muhammad19"),
        _list("Skype", "-"),
        _list("Whatsapp", "0123456789"),
        _list("Line", "-"),
      ],
    );
  }

  Padding _list(String title, String content) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TypographyStyle.captionP.merge(
              TextStyle(
                color: PaletteColor.grey60,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            content,
            style: TypographyStyle.paragraphP,
          ),
        ],
      ),
    );
  }
}
