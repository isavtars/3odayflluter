import 'package:flutter/material.dart';
import 'package:fluuterprojects/screens/setting_screen.dart';

import '../widgets/drawer.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("flluterApp"),
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
              child: Text("this is cointener"),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ))
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
