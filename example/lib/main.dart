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
    "Ayden Ram",
    "Rowan Trevon",
    "Garrison Faisal",
    "Bridie Ford",
    "Rameel Xavier",
    "Abriel Yestin",
    "Cal Heston",
    "Ryland Nick",
    "Orson Kaylen",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30.0),
      child: AutoSearchInput(
        data: names,
        maxElementsToDisplay: 10,
        onItemTap: (index) {},
        onSearchClear: () {
          print("Cleared Search");
        },
        onEditingComplete: (value){
          print("Text: " + value);
        },
        onSubmitted: (value){
          print("Submitted: " + value);
        },
      ),
    );
  }
}
