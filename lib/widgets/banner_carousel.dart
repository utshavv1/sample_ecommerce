
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

/// Displays automatically sliding promotional banners.
class BannerCarousel extends StatelessWidget {
  const BannerCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    // Each banner has its own title, subtitle, and background color.
    final banners = [
      {
        'title': 'MEGA SALE',
        'subtitle': 'Discover great deals today',
        'color': Colors.deepOrange,
      },
      {
        'title': 'NEW ARRIVALS',
        'subtitle': 'Explore our latest products',
        'color': Colors.blue,
      },
      {
        'title': 'SPECIAL OFFERS',
        'subtitle': 'Find something you love',
        'color': Colors.purple,
      },
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: 155,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        enlargeCenterPage: true,
        viewportFraction: 0.92,
      ),

      // Convert each banner into a visual card.
      items: banners.map((banner) {
        return Builder(
          builder: (context) {
            return Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: banner['color'] as Color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    banner['title'] as String,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    banner['subtitle'] as String,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}