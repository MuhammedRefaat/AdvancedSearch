import 'package:auto_search/auto_search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> names = [
    "Orange",
    "Apple",
    "Banana",
    "Mango Orange",
    "Carrot Apple",
    "Yellow Watermelon",
    "Zhe Fruit",
    "White Oats",
    "Dates",
    "Raspberry Blue",
    "Green Grapes",
    "Red Grapes",
    "Dragon Fruit"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30.0),
      child: AdvancedAutoSearch(
        data: names,
        maxElementsToDisplay: 10,
        onItemTap: (index) {},
        onSearchClear: () {
          print("Cleared Search");
        },
        onSubmitted: (value, value2) {
          print("Submitted: " + value);
        },
        onEditingProgress: (value, value2) {
          print("TextEdited: " + value);
          print("LENGTH: " + value2.length.toString());
        },
      ),
    );
  }
}
