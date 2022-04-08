import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  // const CategoriesMealsScreen({Key? key}) : super(key: key);

  /// Atributo
  final Category category;

  ///Construtor
  CategoriesMealsScreen(
    this.category,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Text('Recipes by Category ${category.id}'),
      ),
    );
  }
}
