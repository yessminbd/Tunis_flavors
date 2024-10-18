class Item {
  final String name;
  final String image;
  final double price;

  Item({required this.name, required this.image, required this.price});
}

final List<Item> vegetables = [
  Item(name: "Carrot", image: "assets/Market/carrot.jpg", price: 3.0),
  Item(name: "Tomato", image: "assets/Market/tomato.jpg", price: 3.0),
  Item(name: "Garlic", image: "assets/Market/garlic.jpg", price: 7.0),
  Item(name: "Potato", image: "assets/Market/potato.jpg", price: 2.0),
  Item(name: "Onion", image: "assets/Market/onion.jpg", price: 4.0),
  Item(name: "Spinach", image: "assets/Market/spinach.jpg", price: 3.0),
];

final List<Item> fruits = [
  Item(name: "Apple", image: "assets/Market/appl.jpg", price: 7.0),
  Item(name: "Peach", image: "assets/Market/peach.jpg", price: 11.0),
  Item(name: "Banana", image: "assets/Market/banane.jpg", price: 11.0),
  Item(name: "Orange", image: "assets/Market/orange.jpg", price: 5.0),
  Item(name: "Waterm", image: "assets/Market/waterm.jpg", price: 4.0),
  Item(name: "Kiwi", image: "assets/Market/kiwi.jpg", price: 17.0),
];
