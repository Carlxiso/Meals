import 'package:flutter/material.dart';

import '../components/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Let´s get something to eat!'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          // Cada tile vai ter no maximo 200px de largura
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
        ),

        ///map vai percorrer as categorias e clocá-las no componente categoria_item
        children: DUMMY_CATEGORIES.map((mapRecebeUmaCategoria) {
          return CategoryItem(mapRecebeUmaCategoria);
        }).toList(),
      ),
    );
  }
}
