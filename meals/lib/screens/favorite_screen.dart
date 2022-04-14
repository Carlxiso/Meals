import 'package:flutter/material.dart';
import '../components/meal_item.dart';
import '../models/meal.dart';

class FavorirteScreen extends StatelessWidget {
  // const FavorirteScreen({Key? key}) : super(key: key);

  final List<Meal> favoriteMeals;

  const FavorirteScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('No meal was selected as a favourite'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoriteMeals[index]);
        },
      );
    }
  }
}
