import 'package:flutter/material.dart';
import 'package:shoe_app/models/shoe.dart';

class CustomSearchDelegate extends SearchDelegate {
  //Demo list to show querying

   late final List<Shoe>  _searchList =[];

    //first overwrite to clear the search text

    @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear), 
        onPressed: () {
        query = '';
        }
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      }, 
      icon: Icon(Icons.arrow_back),
      );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var shoeName in _searchList ) {
      if (shoeName.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(shoeName as String);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
      );
  }


  //last override to show the querying process of the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var shoeName in _searchList) {
      if (shoeName.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(shoeName as String);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
      );
  }
}

extension on Shoe {
  toLowerCase() {}
}