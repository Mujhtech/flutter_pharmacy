import 'package:flutter/material.dart';

class CartIncrement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: TextField(
        style: TextStyle(
            color: Colors.white70, fontSize: 14, fontFamily: 'Poppins'),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 0),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            hintText: '1',
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            fillColor: Colors.white,
            filled: true,
            prefixIcon: GestureDetector(
                onTap: () {},
                child: Icon(Icons.exposure_minus_1,
                    size: 20, color: Colors.black)),
            suffixIcon: GestureDetector(
                onTap: () {},
                child: Icon(Icons.plus_one, size: 20, color: Colors.black))),
        autocorrect: false,
        autofocus: false,
      ),
    );
  }
}
