import 'package:flutter/material.dart';
import 'package:hungry_hands/models/RestaurantModel.dart';
import 'package:hungry_hands/widgets/search_box.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => HomeScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant'),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: searchBox(),
    );
  }
}

// ListView.builder(
//           itemCount: RestaurantModel.restaurant.length,
//           itemBuilder: (context, index) {
//             return RestaurantCard(restaurant: RestaurantModel.restaurant[index]);
//           }),

class RestaurantCard extends StatelessWidget {
  final RestaurantModel restaurant;
  const RestaurantCard({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            image: DecorationImage(
              image: NetworkImage(restaurant.imageUrl),
            ),
          ),
        ),
      ],
    );
  }
}
