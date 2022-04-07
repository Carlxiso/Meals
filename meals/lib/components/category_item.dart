import 'package:flutter/material.dart';

import '../models/category.dart';

/// Component CategoryItem vai receber uma categoria como parametro
///
class CategoryItem extends StatelessWidget {
  // const CategoryItem({Key? key}) : super(key: key);

  ///Parametro Category
  final Category category;

  /// Construtor
  const CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category.title),
    );
  }
}
