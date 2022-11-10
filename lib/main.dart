import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled5_clase8/utils.dart';

import 'Pages/detail_page.dart';
import 'Pages/home_page.dart';
import 'Pages/init_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UI-Future",
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme()
      ),
      home: InitPage(),
    );
  }
}
