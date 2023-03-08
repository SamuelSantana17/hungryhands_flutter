import 'package:flutter/material.dart';
import 'package:hungry_hands/models/RestaurantModel.dart';
import 'package:hungry_hands/widgets/search_box.dart';

class HomeScreen extends StatelessWidget {
  // static const String routeName = '/';

  // static Route route() {
  //   return MaterialPageRoute(
  //     builder: (_) => HomeScreen(),
  //     settings: RouteSettings(name: routeName),
  //   );
  // }
//need to fix this, erros come from this class
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          searchBox(),
          ListView.builder(
              shrinkWrap: true,
              itemCount: RestaurantModel.restaurant.length,
              itemBuilder: (context, index) {
                return RestaurantCard(
                    restaurant: RestaurantModel.restaurant[index]);
              }),
          // BottomNavBar(),
          //
        ],
        //  backgroundColor: Theme.of(context).colorScheme.background,
      )),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final RestaurantModel restaurant;
  const RestaurantCard({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                    image: NetworkImage(restaurant.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      5.0,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '${restaurant.deliveryTime} min',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(restaurant.name,
                    style: Theme.of(context).textTheme.headlineMedium),
                SizedBox(
                  height: 5,
                ),
                Text(
                    '${restaurant.distance}miles -\$${restaurant.deliveryFee}delivery'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.history),
    Icon(Icons.person),
    Icon(Icons.home),
    Icon(Icons.favorite)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          //  setState(() {
          _currentIndex = newIndex;
          // });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'History',
            icon: Icon(Icons.history),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
