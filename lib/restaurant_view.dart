import 'package:flutter/material.dart';
import 'restaurant.dart';

class RestaurantView extends StatelessWidget {

  final Restaurant restaurant;

  const RestaurantView({ super.key, required this.restaurant });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(restaurant.name.toUpperCase(), style: Theme.of(context).textTheme.headline2),
        const SizedBox(height: 5),
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: Stack(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset(
                    "assets/${restaurant.image}.png",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20)
                      )
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Text("${restaurant.averageRating}/10", style: Theme.of(context).textTheme.headline2),
                  ),
                )
              ],
            ),
          )
        )
      ],
    );
  }
}
