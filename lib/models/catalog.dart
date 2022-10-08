import 'dart:convert';

class CatalogModel {
  static List<Item> items = [
    // Item(
    //     id: 1,
    //     name: "iPhone 12 Pro",
    //     desc: "Apple iPhone 12th generation",
    //     price: 499,
    //     color: "#33505a",
    //     image:
    //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"),
    // Item(
    //     id: 2,
    //     name: "samsung alter f20",
    //     desc: "samsung",
    //     price: 29999,
    //     color: "#181818",
    //     image:
    //         "https://imgs.search.brave.com/uL5Y_wYTprwpUFXeKba-eGsv6z-fvy0bowrB3Rx-0bg/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9ubC5s/ZXRzZ29kaWdpdGFs/Lm9yZy91cGxvYWRz/LzIwMjAvMTIvczIx/LXVsdHJhLXNtYXJ0/cGhvbmUuanBn"),
    // Item(
    //     id: 3,
    //     name: "redmi note10 pro",
    //     desc: "xami",
    //     price: 999,
    //     color: "#181818",
    //     image:
    //         "https://imgs.search.brave.com/4FsdDm2QiRnbh-JLFkiWmvUt8AkN3M-PEMwfA_r6muw/rs:fit:187:300:1/g:ce/aHR0cHM6Ly93d3cu/bW92aWx6b25hLmVz/L2FwcC91cGxvYWRz/LzIwMTgvMDIvWGlh/b21pLVJlZG1pLU5v/dGUtNS1Qcm8tZnJv/bnRhbC5wbmc"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
        this.id,
        this.name,
        this.desc,
        this.price,
        this.color,
        this.image
  );


  Item copyWith({
    int? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id ?? this.id,
      name ?? this.name,
      desc ?? this.desc,
      price ?? this.price,
      color ?? this.color,
      image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'desc': desc});
    result.addAll({'price': price});
    result.addAll({'color': color});
    result.addAll({'image': image});
  
    return result;
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map['id']?.toInt() ?? 0,
      map['name'] ?? '',
      map['desc'] ?? '',
      map['price'] ?? 0,
      map['color'] ?? '',
      map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Item &&
      other.id == id &&
      other.name == name &&
      other.desc == desc &&
      other.price == price &&
      other.color == color &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      desc.hashCode ^
      price.hashCode ^
      color.hashCode ^
      image.hashCode;
  }
}



  // factory Item.fromMap(Map<String, dynamic> map) {
  //   return Item(
  //     id: map["id"],
  //     name: map["name"],
  //     desc: map["desc"],
  //     price: map["price"],
  //     color: map["color"],
  //     image: map["image"],
  //   );
  // }

  // toMap() => {
  //       "id": id,
  //       "name": name,
  //       "desc": desc,
  //       "price": price,
  //       "color": color,
  //       "image": image,
  //     };