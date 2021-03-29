import 'package:flutter/material.dart';
import 'package:pharmacy_design/constants.dart';

class ProductDetail extends StatelessWidget {
  final String text1;
  final String text2;
  final IconData icon;
  ProductDetail({this.icon, this.text1, this.text2});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Constants.droPurple,
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text(
                text1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14, color: Constants.grayColor),
              ),
            ),
            Flexible(
              child: Text(
                text2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            )
          ],
        )
      ],
    );
  }
}
