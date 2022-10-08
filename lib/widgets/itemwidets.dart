import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 245, 239, 238),
      child: ListTile(
        hoverColor: Colors.red,
        onTap: () {
          debugPrint("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: const TextStyle(
            color: Color.fromARGB(255, 218, 113, 2),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
