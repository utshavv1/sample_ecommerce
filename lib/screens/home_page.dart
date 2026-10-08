
import 'package:flutter/material.dart';

import '../data/product_data.dart';
import '../data/product_data.dart';
import '../widgets/banner_carousel.dart';
import '../widgets/category_item.dart';
import '../widgets/product_card.dart';
import 'category.dart';

/// Main shopping screen displayed when the app opens.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Match each category to a suitable Material icon.
    final Map<String, IconData> categoryIcons = {
      'Electronics': Icons.devices,
      'Fashion': Icons.checkroom,
      'Shoes': Icons.directions_walk,
      'Beauty': Icons.spa,
      'Accessories': Icons.watch,
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daraz',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,

        // Shopping and search actions in the AppBar.
        actions: [
          IconButton(
            tooltip: 'Search',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Search feature is not implemented yet'),
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            tooltip: 'Cart',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Cart is a demonstration feature'),
                ),
              );
            },
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),

      // Allows the homepage sections to scroll vertically.
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome message.
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Welcome to Daraz!',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 6),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Discover products you will love.',
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              const SizedBox(height: 18),

              // Three promotional banners from the carousel widget.
              const BannerCarousel(),

              const SizedBox(height: 22),

              // Category heading.
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Shop by Category',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 14),

              // Horizontal scrolling category list.
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final categoryName = categories[index];

                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CategoryItem(
                        categoryName: categoryName,
                        categoryIcon: categoryIcons[categoryName]!,
                        onTap: () {
                          // Open the category screen and pass its name.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category(
                                categoryName: categoryName,
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 22),

              // Popular products heading.
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Popular Products',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // Display products in two columns.
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: products.length,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.60,
                  ),
                  itemBuilder: (context, index) {
                    // Reuse the same ProductCard for every product.
                    return ProductCard(
                      product: products[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}