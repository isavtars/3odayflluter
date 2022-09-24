import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("setting screen"),
          backgroundColor: Color.fromARGB(255, 5, 227, 12),
        ),
        body: Text("this is from setting screen ok done"));
  }
}
