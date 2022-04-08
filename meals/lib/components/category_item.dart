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
      padding: const EdgeInsets.all(15),
      child: Text(
        category.title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          colors: [
            /// A primeira cor vai ser a cor passada com uma opacidade
            category.color.withOpacity(0.5),

            /// A segunda cor vai ser a cor passada solida
            category.color,
          ],

          /// Onde vai começar o gradient
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
