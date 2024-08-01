import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_start/constants.dart';
import 'package:shop_start/widget/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      title: Text(
        'HMA Store',
        textDirection: TextDirection.rtl,
        style: GoogleFonts.getFont('Almarai'),
      ),
      backgroundColor: kPrimaryColor,
      centerTitle: false,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
    );
  }
}
