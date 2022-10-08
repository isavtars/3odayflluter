import 'package:flutter/material.dart';
import 'package:fluuterprojects/screens/setting_screen.dart';

import '../models/catalog.dart';
import '../widgets/drawer.dart';
import '../widgets/itemwidets.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(55, (index) => CatalogModel.items[2]);

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
              child: const Icon(Icons.settings))
        ],
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummyList[index],
          );
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
