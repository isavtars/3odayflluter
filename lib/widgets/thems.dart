import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
            color: Color.fromARGB(255, 246, 240, 240),
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black)),
        textTheme: Theme.of(context).textTheme,
      );

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(primarySwatch: Colors.yellow);
}