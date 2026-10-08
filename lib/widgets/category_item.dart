
import 'package:flutter/material.dart';

/// Displays one category and handles category selection.
class CategoryItem extends StatelessWidget {
  final String categoryName;
  final IconData categoryIcon;
  final VoidCallback onTap;

  const CategoryItem({
    super.key,
    required this.categoryName,
    required this.categoryIcon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        width: 82,
        child: Column(
          children: [
            CircleAvatar(
              radius: 29,
              backgroundColor: Colors.deepOrange.shade50,
              child: Icon(
                categoryIcon,
                color: Colors.deepOrange,
                size: 28,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              categoryName,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}