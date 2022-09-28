// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:fluuterprojects/screens/home_screens.dart';
import 'package:fluuterprojects/screens/loggins_reen.dart';
import 'package:fluuterprojects/utils/route.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    color: Colors.white,
    debugShowCheckedModeBanner: false,
    title: "my app",
    // home: Myapp(), not mentions double routes
    themeMode: ThemeMode.light,
    theme: ThemeData(
      primarySwatch: Colors.green,
      // primaryTextTheme: GoogleFonts.latoTextTheme(),
      fontFamily: GoogleFonts.lato().fontFamily,
    ),
    darkTheme: ThemeData(primarySwatch: Colors.yellow),
    initialRoute: MyRoute.loginRoute,
    routes: {
      //wehave mandatori to pass "/"
      "/": (context) => Loginform(),
      MyRoute.homeRoute: (context) => Myapp(),
      MyRoute.loginRoute: (context) => Loginform(),
    },
  ));
}
