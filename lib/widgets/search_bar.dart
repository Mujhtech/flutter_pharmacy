import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      child: TextField(
        style: TextStyle(
            color: Colors.white70, fontSize: 14, fontFamily: 'Poppins'),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 0),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            hintText: 'Search....',
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            fillColor: Colors.white,
            filled: true,
            prefixIcon: GestureDetector(
                onTap: () {}, child: Icon(Icons.search, color: Colors.black)),
            suffixIcon: GestureDetector(
                onTap: () {}, child: Icon(Icons.cancel, color: Colors.black))),
        autocorrect: false,
        autofocus: false,
      ),
    );
  }
}
