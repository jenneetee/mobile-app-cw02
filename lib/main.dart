import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import your HomeScreen

void main() {
  runApp(RecipeBookApp());
}

class RecipeBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Book',
      theme: ThemeData(
        primaryColor: Colors.teal, // Main app bar color
        scaffoldBackgroundColor: Colors.teal.shade50, // Light teal background
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal.shade700, // Darker teal for app bar
          foregroundColor: Colors.white, // White text/icons
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.teal.shade900), // Darker text
          bodyMedium: TextStyle(color: Colors.teal.shade800),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal, // Button color
            foregroundColor: Colors.white, // Button text
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
