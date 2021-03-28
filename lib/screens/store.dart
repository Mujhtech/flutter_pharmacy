import 'package:flutter/material.dart';
import 'package:pharmacy_design/constants.dart';

class StoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
            size: 36,
          ),
        ),
        elevation: 0,
        title: Text(
          '${productLists.length} Items',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 18),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(),
    );
  }
}
