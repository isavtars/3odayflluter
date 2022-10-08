class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 499,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"),
    Item(
        id: 2,
        name: "samsung alter f20",
        desc: "samsung",
        price: 29999,
        color: "#181818",
        image:
            "https://imgs.search.brave.com/uL5Y_wYTprwpUFXeKba-eGsv6z-fvy0bowrB3Rx-0bg/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9ubC5s/ZXRzZ29kaWdpdGFs/Lm9yZy91cGxvYWRz/LzIwMjAvMTIvczIx/LXVsdHJhLXNtYXJ0/cGhvbmUuanBn"),
    Item(
        id: 3,
        name: "redmi note10 pro",
        desc: "xami",
        price: 999,
        color: "#181818",
        image:
            "https://imgs.search.brave.com/4FsdDm2QiRnbh-JLFkiWmvUt8AkN3M-PEMwfA_r6muw/rs:fit:187:300:1/g:ce/aHR0cHM6Ly93d3cu/bW92aWx6b25hLmVz/L2FwcC91cGxvYWRz/LzIwMTgvMDIvWGlh/b21pLVJlZG1pLU5v/dGUtNS1Qcm8tZnJv/bnRhbC5wbmc"),
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
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
