import 'package:flutter/material.dart';

import '../components/meal_item.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';

class CategoriesMealsScreen extends StatelessWidget {
  // const CategoriesMealsScreen({Key? key}) : super(key: key);

  /// Atributo
  // final Category category;

  ///Construtor
  // CategoriesMealsScreen(
  //   this.category,
  // );

  @override
  Widget build(BuildContext context) {
    ///Pegar o dado da categoria através da navegação da rota (Usando ModalRoute)
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
          itemCount: categoryMeals.length,
          itemBuilder: (context, index) {
            return MealItem(categoryMeals[index]);
          }),
    );
  }
}
