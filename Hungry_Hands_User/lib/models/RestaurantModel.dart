import 'package:equatable/equatable.dart';

import 'models.dart';

class RestaurantModel extends Equatable {
  final int id;
  final String imageUrl;
  final String name;
  // final List<String> tags;
  final List<MenuItem> menuItem;
  final int deliveryTime;
  final double deliveryFee;
  final double distance;

  RestaurantModel(
      {required this.id,
      required this.imageUrl,
      required this.name,
      // required this.tags,
      required this.menuItem,
      required this.deliveryTime,
      required this.deliveryFee,
      required this.distance});

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        imageUrl,
        name,
        // tags,
        deliveryTime,
        deliveryFee,
        distance
      ];

  static List<RestaurantModel> restaurant = [
    RestaurantModel(
        id: 1,
        imageUrl:
            "https://www.csun.edu/sites/default/files/Arbor%20Grill%402x.png",
        name: 'Arbor Grill',
        // tags: tags,//if we want to use the filter
        menuItem: MenuItem.menuItems
            .where((menuItem) => menuItem.restaurantId == 1)
            .toList(),
        deliveryTime: 20,
        deliveryFee: 5,
        distance: 0.1),
    RestaurantModel(
        id: 2,
        imageUrl:
            'https://www.csun.edu/sites/default/files/styles/medium/public/Panda%20Express%402x.png?itok=2d-Dwt9B',
        name: 'Panda Express',
        //  tags: tags,
        //this way resturant are link to specific menus
        menuItem: MenuItem.menuItems
            .where((menuItem) => menuItem.restaurantId == 2)
            .toList(),
        deliveryTime: 10,
        deliveryFee: 3.99,
        distance: 0.2),
    RestaurantModel(
        id: 3,
        imageUrl:
            'https://www.csun.edu/sites/default/files/styles/medium/public/Burger%20King%402x_0.png?itok=2Li-Wfa4',
        name: 'Burger King',
        // tags: tags,
        menuItem: MenuItem.menuItems
            .where((menuItem) => menuItem.restaurantId == 3)
            .toList(),
        deliveryTime: 15,
        deliveryFee: 3.99,
        distance: 0.2),
    RestaurantModel(
        id: 4,
        imageUrl:
            'https://www.csun.edu/sites/default/files/styles/medium/public/Subway%402x.png?itok=Q1ZhUlM0',
        name: 'Subway',
        // tags: tags,
        menuItem: MenuItem.menuItems
            .where((menuItem) => menuItem.restaurantId == 4)
            .toList(),
        deliveryTime: 15,
        deliveryFee: 3.99,
        distance: 0.1)
  ];
}
