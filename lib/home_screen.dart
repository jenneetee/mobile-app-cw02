import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> recipes = [
    {
      'name': 'Spaghetti Bolognese',
      'image': 'assets/spaghetti-bolognese.jpg',
      'ingredients': [
        '200g spaghetti',
        '100g minced beef',
        '1 onion (chopped)',
        '2 cloves garlic (minced)',
        '1 cup tomato sauce',
        'Salt & pepper to taste'
      ],
      'instructions': '1. Cook spaghetti.\n'
          '2. Sauté onion and garlic.\n'
          '3. Add minced beef and cook.\n'
          '4. Pour in tomato sauce.\n'
          '5. Simmer and serve with spaghetti.'
    },
    {
      'name': 'Chicken Curry',
      'image': 'assets/chicken-curry.jpg',
      'ingredients': [
        '2 chicken breasts (cubed)',
        '1 onion (chopped)',
        '2 cloves garlic (minced)',
        '1 tbsp curry powder',
        '1 cup coconut milk',
        'Salt to taste'
      ],
      'instructions': '1. Sauté onion and garlic.\n'
          '2. Add chicken and cook until browned.\n'
          '3. Stir in curry powder.\n'
          '4. Pour in coconut milk and simmer.\n'
          '5. Serve with rice.'
    },
    {
      'name': 'Pancakes',
      'image': 'assets/pancakes.jpg',
      'ingredients': [
        '1 cup flour',
        '1 egg',
        '1 cup milk',
        '1 tbsp sugar',
        '1 tsp baking powder',
        'Butter for cooking'
      ],
      'instructions': '1. Mix all ingredients.\n'
          '2. Heat a pan and add butter.\n'
          '3. Pour batter and cook until golden.\n'
          '4. Flip and cook the other side.\n'
          '5. Serve with syrup.'
    },
    {
      'name': 'Caesar Salad',
      'image': 'assets/caesar-salad.jpg',
      'ingredients': [
        '1 romaine lettuce',
        '1/2 cup croutons',
        '1/4 cup parmesan cheese',
        '2 tbsp Caesar dressing',
        '1 grilled chicken breast (sliced)'
      ],
      'instructions': '1. Chop lettuce.\n'
          '2. Add croutons and cheese.\n'
          '3. Toss with Caesar dressing.\n'
          '4. Top with grilled chicken.\n'
          '5. Serve immediately.'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Recipe Book')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(
                recipe['image'],
                width: 50,
                height: 50,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.image_not_supported,
                      size: 50, color: Colors.grey);
                },
              ),
              title: Text(recipe['name']),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      recipeName: recipe['name'],
                      imagePath: recipe['image'],
                      ingredients: List<String>.from(recipe['ingredients']),
                      instructions: recipe['instructions'],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
