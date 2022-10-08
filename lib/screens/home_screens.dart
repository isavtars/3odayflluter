import 'dart:convert';
import "dart:core";

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluuterprojects/screens/setting_screen.dart';

import '../models/catalog.dart';
import '../widgets/drawer.dart';
import '../widgets/itemwidets.dart';

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
//hook area

  //useffects
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    // debugPrint(decodedData);
    final productsData = decodedData["products"];

    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(55, (index) => CatalogModel.items[2]);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          textScaleFactor: 1.0,
          "firstapp",
          style: TextStyle(color: Colors.black),
        ),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.2, vertical: 2.2),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: CatalogModel.items[index],
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(
                color: Colors.red,
              )),
      ),
      drawer: const MyDrawer(),
    );
  }
}
