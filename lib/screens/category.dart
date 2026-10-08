
import 'package:flutter/material.dart';
import '../data/product_data.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

/// Displays products belonging to the selected category.
class Category extends StatelessWidget {
  final String categoryName;

  const Category({
    super.key,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    // Select only products that match the category name.
    final List<Product> categoryProducts = products
        .where((product) => product.category == categoryName)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),

      // GridView.builder creates product cards efficiently.
      body: categoryProducts.isEmpty
          ? const Center(
        child: Text('No products available in this category'),
      )
          : GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: categoryProducts.length,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.60,
        ),
        itemBuilder: (context, index) {
          return ProductCard(
            product: categoryProducts[index],
          );
        },
      ),
    );
  }
}