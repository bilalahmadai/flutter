import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: GoogleFonts.poppins().fontFamily,
      canvasColor: white3,
      accentColor: darkBlue,
      cardColor: white2,
      primaryColor: txt,
      backgroundColor: lightSilver,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: MyTheme.darkBlue),
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      // brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      canvasColor: white33,
      accentColor: darkBlue2,
      cardColor: white22,
      primaryColor: txt2,
      backgroundColor: lightSilver2,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: MyTheme.lightSilver),
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ));

  static Color lightBlue = Color(0xff4171EF);
  static Color darkBlue = Color(0xff2736B7);
  static Color lightSilver = Color(0xffB3DEF7);
  static Color white2 = Color(0xffE3F4FE);
  static Color white3 = Color.fromARGB(255, 254, 255, 255);
  static Color tomato = Color(0xffE33841);
  static Color txt = Color.fromARGB(255, 54, 54, 54);

  static Color darkBlue2 = Color.fromARGB(255, 55, 75, 255);
  static Color lightSilver2 = Color.fromARGB(255, 71, 109, 132);
  static Color white22 = Color.fromARGB(255, 0, 0, 0);
  static Color white33 = Color.fromARGB(255, 45, 45, 45);
  static Color txt2 = Color.fromARGB(255, 245, 245, 245);
}
