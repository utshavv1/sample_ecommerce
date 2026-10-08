
import '../models/product.dart';

// Five categories displayed on the home page.
const List<String> categories = [
  'Electronics',
  'Fashion',
  'Shoes',
  'Beauty',
  'Accessories',
];

// Static product data: no database or backend is required.
const List<Product> products = [
  Product(
    name: 'Smartphone',
    category: 'Electronics',
    image: 'assets/image/dice.jpg',
    price: 25000,
    rating: 4.5,
    description: 'A modern smartphone for everyday use.',
  ),
  Product(
    name: 'Laptop',
    category: 'Electronics',
    image: 'assets/image/dice.jpg',
    price: 75000,
    rating: 4.7,
    description: 'A laptop suitable for study and work.',
  ),
  Product(
    name: 'Headphones',
    category: 'Electronics',
    image: 'assets/image/dice.jpg',
    price: 3500,
    rating: 4.3,
    description: 'Headphones for music and entertainment.',
  ),
  Product(
    name: 'Smart Watch',
    category: 'Electronics',
    image: 'assets/image/dice.jpg',
    price: 5500,
    rating: 4.4,
    description: 'A smart watch for everyday activities.',
  ),
  Product(
    name: 'T-Shirt',
    category: 'Fashion',
    image: 'assets/image/dice.jpg',
    price: 1200,
    rating: 4.2,
    description: 'A comfortable casual T-shirt.',
  ),
  Product(
    name: 'Jacket',
    category: 'Fashion',
    image: 'assets/image/dice.jpg',
    price: 3200,
    rating: 4.5,
    description: 'A stylish jacket for casual wear.',
  ),
  Product(
    name: 'Sneakers',
    category: 'Shoes',
    image: 'assets/image/dice.jpg',
    price: 4500,
    rating: 4.6,
    description: 'Comfortable sneakers for everyday use.',
  ),
  Product(
    name: 'Face Cream',
    category: 'Beauty',
    image: 'assets/image/dice.jpg',
    price: 850,
    rating: 4.1,
    description: 'A cream for a simple skincare routine.',
  ),
  Product(
    name: 'Sunglasses',
    category: 'Accessories',
    image: 'assets/image/dice.jpg',
    price: 1500,
    rating: 4.3,
    description: 'Stylish sunglasses for everyday outfits.',
  ),
  Product(
    name: 'Backpack',
    category: 'Accessories',
    image: 'assets/image/dice.jpg',
    price: 2200,
    rating: 4.5,
    description: 'A useful backpack for school and travel.',
  ),
];