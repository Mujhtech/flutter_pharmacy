import 'package:flutter/material.dart';
import 'package:pharmacy_design/constants.dart';

class FilterBox extends StatefulWidget {
  final VoidCallback isSearch;

  FilterBox({this.isSearch});

  @override
  _FilterBoxState createState() => _FilterBoxState();
}

class _FilterBoxState extends State<FilterBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Constants.grayColor,
            ),
            child: Icon(Icons.swap_vert),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Constants.grayColor,
            ),
            child: Icon(Icons.filter_alt),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () => widget.isSearch,
            onLongPress: () => widget.isSearch,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Constants.grayColor,
              ),
              child: Icon(Icons.search),
            ),
          )
        ],
      ),
    );
  }
}
