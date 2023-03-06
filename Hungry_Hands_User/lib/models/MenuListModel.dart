import 'package:equatable/equatable.dart';

class MenuItem extends Equatable {
  final int id;
  final int restaurantId;
  // final String imageUrl;
  final String name;
  final String description;
  final double price;

  MenuItem(
      {required this.id,
      required this.restaurantId,
      // required this.imageUrl,
      required this.name,
      required this.description,
      required this.price});
//, imageUrl
  @override
  List<Object?> get props => [id, restaurantId, name, description, price];
  // final String imageUrl;
//imageUrl: imageUrl,
  static List<MenuItem> menuItems = [
    MenuItem(
        id: 1,
        restaurantId: 1,
        name: 'Chicken Sandwich',
        description: 'Delicious Sandwich with chicken and tomatoes',
        price: 100.00),
    MenuItem(
        id: 2,
        restaurantId: 1,
        name: 'Tuna Sandwich',
        description: 'Delicious Sandwich with Tuna and pickles',
        price: 150.00)
  ];
}
