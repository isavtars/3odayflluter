// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:fluuterprojects/screens/home_screens.dart';
import 'package:fluuterprojects/screens/loggins_reen.dart';
import 'package:fluuterprojects/utils/route.dart';
import 'package:fluuterprojects/widgets/thems.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyMaterailApp());
}

class MyMaterailApp extends StatelessWidget {
  const MyMaterailApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
      debugShowCheckedModeBanner: false,
      title: "my app",
      // home: Myapp(), not mentions double routes
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      initialRoute: MyRoute.homeRoute,
      routes: {
        //wehave mandatori to pass "/"
        "/": (context) => Myapp(),
        MyRoute.homeRoute: (context) => Myapp(),
        MyRoute.loginRoute: (context) => Loginform(),
      },
    );
  }
}
