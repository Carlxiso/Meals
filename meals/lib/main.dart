import 'package:flutter/material.dart';

import 'screens/tabs_screen.dart';

import 'screens/settings_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'utils/app_routes.dart';

import 'models/meal.dart';
import 'data/dummy_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _availableMaels = DUMMY_MEALS;
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
        AppRoutes.HOME: (context) => const TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (context) =>
            CategoriesMealsScreen(_availableMaels),
        AppRoutes.MEAL_DETAIL: (context) => MealDetailScreen(),
        AppRoutes.SETTINGS: (context) => SettingsScreen(),
      },
    );
  }
}
