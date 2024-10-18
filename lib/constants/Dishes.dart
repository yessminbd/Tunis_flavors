class Dish {
  final String image;
  final String name;
  final String price;
  final String label;

  Dish(
      {required this.image,
      required this.name,
      required this.price,
      required this.label});
}

List<Dish> dishes = [
  Dish(
      image: "assets/Restaurant/Lablebi.jpeg",
      name: "Lablebi",
      price: "12.00 TND",
      label: " (361)"),
  Dish(
      image: "assets/Restaurant/couskous.jpeg",
      name: "Couscous",
      price: "18.00 TND",
      label: "(245)"),
  Dish(
      image: "assets/Restaurant/brick.jpg",
      name: "Brik",
      price: "7.00 TND",
      label: "(78)"),
  Dish(
      image: "assets/Restaurant/chakchouka.jpg",
      name: "Chakchouka",
      price: "5.00 TND",
      label: "(250)"),
  Dish(
      image: "assets/Restaurant/tajin.jpg",
      name: "Tajin",
      price: "12.00 TND",
      label: "(90)"),
  Dish(
      image: "assets/Restaurant/chapati.jpeg",
      name: "Chapati",
      price: "4.00 TND",
      label: " (50)"),
];
