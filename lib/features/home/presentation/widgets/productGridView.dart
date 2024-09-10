import 'package:flutter/material.dart';
import 'package:grocery/features/home/presentation/widgets/groceryproductwidget.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      padding: EdgeInsets.zero,
      mainAxisSpacing: 10,
      crossAxisSpacing: 15,
      childAspectRatio: 35 / 50,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(
        4,
        (index) {
          return const GroceryProductHome();
        },
      ),
    );
  }
}