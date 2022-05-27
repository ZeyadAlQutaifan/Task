import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/colors/app_colors.dart';
import 'package:untitled2/landing/landing_page.dart';
import 'package:untitled2/screens/contactUs.dart';
import 'package:untitled2/screens/home.dart';
import 'package:untitled2/widgets/app_bar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        textTheme: GoogleFonts.almaraiTextTheme(),

        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
    );
  }





}


