class Coffee {
  final String name;
  final String imageUrl;
  late String? supplement = '';
  final double rating;
  final double price;

  Coffee(
      {required this.name,
      required this.imageUrl,
      this.supplement,
      required this.rating,
      required this.price});
}
