class pandaMenuModel {
  final String name;
  final String description;
  final double price;

  pandaMenuModel({required this.name, required this.description, required this.price});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'price': price,
    };
  }
}