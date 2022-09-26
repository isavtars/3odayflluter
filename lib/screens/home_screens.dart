import 'package:flutter/material.dart';
import 'package:fluuterprojects/screens/setting_screen.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("flutter day 2"),
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (((context) => SettingScreen()))));
              },
              child: Icon(Icons.settings))
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 2),
          Text("this is text"),
          Container(
              padding: EdgeInsets.all(20.2),
              child: Text("this is cointenerxxxx"),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ))
        ],
      ),
      drawer: Drawer(
          child: Column(
        children: [
          SizedBox(height: 50),
          Text("this is from drawersrrr"),
        ],
      )),
    );
  }
}
