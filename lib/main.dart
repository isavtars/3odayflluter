import 'package:flutter/material.dart';
import 'package:fluuterprojects/screens/home_screens.dart';
import 'package:fluuterprojects/screens/loggins_reen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "my app",
    // home: Myapp(), not mentions double routes
    themeMode: ThemeMode.light,
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    darkTheme: ThemeData(primarySwatch: Colors.yellow),
    initialRoute: "/login",
    routes: {
      "/": (context) => Myapp(),
      "/login": (context) => Loginform(),
    },
  ));
}
