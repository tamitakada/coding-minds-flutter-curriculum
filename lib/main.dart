import 'package:flutter/material.dart';
import 'restaurant.dart';
import 'restaurant_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline1: TextStyle(fontFamily: "Oswald", fontSize: 30, color: Colors.black, letterSpacing: 5),
          headline2: TextStyle(fontFamily: "Oswald", fontSize: 18, color: Colors.black),
          bodyText1: TextStyle(fontFamily: "Oswald")
        )
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<Restaurant> _allRestaurants = [
    Restaurant(name: "West 40th Halal", image: "halal", averageRating: 8),
    Restaurant(name: "Pho Cafe", image: "pho", averageRating: 8),
    Restaurant(name: "Emiliano's", image: "pizza", averageRating: 8),
    Restaurant(name: "Gust", image: "hamburger", averageRating: 8),
    Restaurant(name: "Inumaru Ramen", image: "ramen", averageRating: 8),
    Restaurant(name: "La Taqueria", image: "tacos", averageRating: 8)
  ];
  late List<Restaurant> _filteredRestaurants;

  @override
  void initState() {
    _filteredRestaurants = _allRestaurants;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'LUNCHFIND',
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.headline1
        ),
        backgroundColor: Colors.transparent,
        elevation: 0
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: TextField(
                decoration: const InputDecoration(
                    hintText: "Search for a restaurant",
                    border: OutlineInputBorder()
                ),
                onChanged: (String input) {
                  _filteredRestaurants = [];
                  for (Restaurant restaurant in _allRestaurants) {
                    if (restaurant.name.toLowerCase().contains(input.toLowerCase())) {
                      _filteredRestaurants.add(restaurant);
                    }
                  }
                  setState(() {});
                },
              )
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20
                ),
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                itemCount: _filteredRestaurants.length,
                itemBuilder: (BuildContext context, int index) {
                  return RestaurantView(
                    restaurant: _filteredRestaurants[index],
                  );
                }
              ),
            )
          ],
        ),
      )
    );
  }

}
