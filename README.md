# AdvancedSearch
Flutter library provides advanced capabilitis for searching through a predefined list using TextField

## How it works? Code talks better:
```
List<String> searchableList = ['Orange', 'Watermelon', 'Banana', ...etc];

AdvancedSearch( // This is basically an Input Text Field
    data: searchableList,
    maxElementsToDisplay: 7,
    onItemTap: (index) {
      // user just found what he needs, now it's your turn to handle that
    },
    onSearchClear: () {
      // may be display the full list? or Nothing? it's your call
    },
    onSubmitted: (value, value2) {
      // now you have a submitted search
    },
    onEditingProgress: (value, value2) {
      // user is trying to lookup something, may be you want to help him?
    },
)
```

## The complete set of features this package gives you

### Callbacks:
    @required data // your set of searchable data (give empty list if you don't want to provide one, then you can take the submitted search text and do whatever you want)
    @required maxElementsToDisplay // as search results, what is the Maximum number you want to have
    @required onItemTap // when user selects one of the displayed search results
    @required onSearchClear // when user clears his search
    onSubmitted // on submitting a search result
    onEditingProgress // when the user is writing down his search words, want to give him live results? use this one
    
### Options:    
    selectedTextColor // what is the text color that should reflects the matching text in search results
    unSelectedTextColor // what is the text color that should reflects the unmatching text in search results
    enabledBorderColor // Border color of TextField when it's enabled 
    disabledBorderColor // Border color of TextField when it's disabled
    focusedBorderColor // Border color of TextField when it's on focus 
    cursorColor // Cursor Color, nothing more to tell
    borderRadius (Default = 10.0) // radius for search results list border
    fontSize (Default = 14.0) // for TextField and Search Results
    singleItemHeight (Default = 45.0) // height for every single item in the search results list
    itemsShownAtStart (Default = 10) // if the user didn't start sraching yet but clicked the search TextField, how many items should be displayed to him
    hintText (Default = 'Enter a name') // hint text for search TextField
    autoCorrect (Default = false) // AutoCorrect functioanlity for TextField inputs
    enabled (Default = true) // is the search should be enabled now, or not
    bgColor (Default = Colors.white) // Background Color for Search Results widget
    borderColor (Default = const Color(0xFFFAFAFA)) // Border Color for Search Results widget
    searchMode (Default = SearchMode.CONTAINS) // what is the search criteria you want to Apply? should the results CONTAINS, STARTING_WITH, or EXACT_MATCH your search
    caseSensitive (Default = false) // want your search to be applied on the searchable list as case sensitive, or not
    minLettersForSearch (Default = 0) // what is the minimum letters that the user should type before starting to receive search results
    clearSearchEnabled (Default = true) // should the user be able to clear his search, or not
    showListOfResults (Default = true) // should a list of results be displayed to the user, or shall you just get what he searches for and you will do your things by your own
    

## So basically you can build your widget like that

```
AdvancedSearch(
  data: ['Orange', 'Watermelon', 'Banana', 'Red Grapes'],
  maxElementsToDisplay: 10,
  singleItemHeight: 50,
  borderColor: Colors.red,
  minLettersForSearch: 3,
  selectedTextColor: Color(0xFF3363D9),
  fontSize: 14,
  borderRadius: 12.0,
  hintText: 'Search Me',
  cursorColor: Colors.blueGrey,
  autoCorrect: false,
  focusedBorderColor: Colors.redAccent,
  bgColor: Color(0xFAFAFA),
  disabledBorderColor: Colors.cyan,
  enabledBorderColor: Colors.black,
  enabled: true,
  caseSensitive: false,
  clearSearchEnabled: true,
  itemsShownAtStart: 3,
  searchMode: SearchMode.CONTAINS,
  showListOfResults: true,
  unSelectedTextColor: Colors.black54,
  onItemTap: (index) {
    print("selected item index is $index");
  },
  onSearchClear: () {
    print("Cleared Search");
  },
  onSubmitted: (searchText, listOfResults) {
    print("Submitted: " + searchText);
  },
  onEditingProgress: (searchText, listOfResults) {
    print("TextEdited: " + searchText);
    print("LENGTH: " + listOfResults.length.toString());
  },
),
```


To give the credit to whom deserve it, I got inspired to do this package by the [auto_search](https://pub.dev/packages/auto_search) package.
