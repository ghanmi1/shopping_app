import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 35,
        left: 10,
        right: 10,
        bottom: 10,
      ),
      child: TextField(
        textAlign: TextAlign.left,
        // controller: _searchcontroller,
        // onChanged: _filterTransaction,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            filled: true,
            // fillColor: Mycolor1,
            prefixIcon: Icon(Icons.search, color: Colors.black),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            hintStyle: new TextStyle(color: Colors.black38),
            hintText: "Search"),
      ),
    );
  }
}
