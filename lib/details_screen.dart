import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String recipeName;
  final List<String> ingredients;
  final String instructions;

  DetailsScreen(
      {required this.recipeName,
      required this.ingredients,
      required this.instructions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipeName)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Ingredients:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ...ingredients.map((ingredient) => Text('- $ingredient')).toList(),
            SizedBox(height: 20),
            Text('Instructions:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(instructions),
          ],
        ),
      ),
    );
  }
}
