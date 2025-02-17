import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recipe Book')),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Spaghetti Bolognese'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    recipeName: 'Spaghetti Bolognese',
                    ingredients: ['Pasta', 'Ground beef', 'Tomato sauce'],
                    instructions: 'Boil pasta, cook beef, mix with sauce.',
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Chicken Curry'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    recipeName: 'Chicken Curry',
                    ingredients: ['Chicken', 'Curry powder', 'Coconut milk'],
                    instructions:
                        'Cook chicken, add spices, simmer in coconut milk.',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
