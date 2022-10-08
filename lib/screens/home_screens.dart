import "dart:core";
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:fluuterprojects/screens/setting_screen.dart';

import '../models/catalog.dart';
// import '../widgets/drawer.dart';
// import '../widgets/itemwidets.dart';
import "package:velocity_x/velocity_x.dart";

import '../widgets/thems.dart';

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
      body: SafeArea(
          child: Container(
        // color: Colors.red,
        padding: Vx.m32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CatlogHeader(),
            (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                ? CatalogList().expand()
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: CircularProgressIndicator()),
                  )
          ],
        ),
      )),
    );
  }
}

class CatlogHeader extends StatelessWidget {
  const CatlogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.red500.xl5.bold.color(MyThemes.darkblue).make(),
        "Terending products".text.xl.make(),
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final caltalog = CatalogModel.items[index];
        return CatalogItem(catalog: caltalog);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        ImageCatalog(
          images: catalog.image,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(MyThemes.darkblue).make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            5.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: Vx.mH8,
              children: [
                "\$${catalog.price}"
                    .text
                    .xl
                    .bold
                    .color(MyThemes.darkblue2)
                    .make(),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyThemes.darkblue),
                        shape: MaterialStateProperty.all(
                          StadiumBorder(),
                        )),
                    child: "Buy".text.make())
              ],
            ).pOnly(right: 8),
          ],
        ))
      ],
    )).white.roundedLg.square(150).make().py16();
  }
}

class ImageCatalog extends StatelessWidget {
  final String images;

  const ImageCatalog({
    Key? key,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(images)
        .box
        .p16
        .rounded
        .color(MyThemes.creamcolor)
        .make()
        .p16()
        .w40(context);
  }
}
