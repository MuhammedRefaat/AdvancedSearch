import 'package:advanced_search/advanced_search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced Search Demo',
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> searchableList = [
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
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 30.0, left: 30, right: 30),
        child: AdvancedSearch(
          data: searchableList,
          maxElementsToDisplay: 10,
          singleItemHeight: 50,
          borderColor: Colors.grey,
          minLettersForSearch: 3,
          selectedTextColor: Color(0xFF3363D9),
          fontSize: 14,
          borderRadius: 12.0,
          hintText: 'Search Me',
          cursorColor: Colors.blueGrey,
          autoCorrect: false,
          focusedBorderColor: Colors.blue,
          searchResultsBgColor: Color(0xFAFAFA),
          disabledBorderColor: Colors.cyan,
          enabledBorderColor: Colors.black,
          enabled: true,
          caseSensitive: false,
          inputTextFieldBgColor: Colors.white10,
          clearSearchEnabled: true,
          itemsShownAtStart: 10,
          searchMode: SearchMode.CONTAINS,
          showListOfResults: true,
          unSelectedTextColor: Colors.black54,
          verticalPadding: 10,
          horizontalPadding: 10,
          hideHintOnTextInputFocus: true,
          onItemTap: (index, value) {
            print("selected item Index is $index");
          },
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
      ),
    );
  }
}
