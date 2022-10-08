import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
            color: Color.fromARGB(255, 246, 240, 240),
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black)),
        textTheme: Theme.of(context).textTheme,
      );

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(primarySwatch: Colors.yellow);

  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkblue = Color(0xff403b58);
  static Color darkblue2 = Color.fromARGB(255, 201, 115, 2);
}
