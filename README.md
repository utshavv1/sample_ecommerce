# Mini E-Commerce Application

## Student Information

* **Project Name:** Mini E-Commerce Application
* **Student Name:** Utshav Neupane

## Description

The Mini E-Commerce Application is a mobile shopping application developed using Flutter and Dart. It allows users to explore products by category, view product information, and navigate between different screens. The application uses static product data and local images without requiring a backend or database.

## Features

* Home page with an AppBar and promotional carousel.
* Five product categories with horizontal scrolling.
* Ten sample products.
* Reusable product cards.
* Product images, prices, and ratings.
* Category page with a two-column product grid.
* Product details page with descriptions and ratings.
* Navigation between the home, category, and product details screens.
* Add to Cart button with SnackBar feedback.
* Responsive layouts using Flutter widgets.

## Technologies Used

* Flutter
* Dart
* Material Design

## Packages Used

* `carousel_slider` — displays promotional banners.
* `cupertino_icons` — provides Cupertino-style icons.

## Project Structure

```text
lib/
├── main.dart
├── data/
│   └── product_data.dart
├── models/
│   └── product.dart
├── screens/
│   ├── home_page.dart
│   ├── category.dart
│   └── product_details.dart
└── widgets/
    ├── banner_carousel.dart
    ├── category_item.dart
    └── product_card.dart

assets/
└── image/
    └── dice.jpg
```

## Screenshots

### Home Page

Home Page screenshot here.

### Category Page

Category Page screenshot here.

### Product Details Page

Product Details screenshot here.

## How to Run

1. Install Flutter and Android Studio.
2. Clone this repository.
3. Open the project folder in Android Studio or VS Code.
4. Run the following command:

   ```bash
   flutter pub get
   ```
5. Start an Android emulator or connect a device.
6. Run the application:

   ```bash
   flutter run
   ```

## Limitations

This project uses static product data. Authentication, backend integration, database storage, payment processing, and full cart management are not implemented.
