import 'package:flutter/material.dart';

import 'screens/categories_screens.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DalyMeals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
                titleLarge: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
            )),
      ),
      routes: {
        AppRoutes.HOME: (context) => const CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (context) => CategoriesMealsScreen(),
      },
    );
  }
}
