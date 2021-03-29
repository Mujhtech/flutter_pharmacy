import 'package:flutter/material.dart';
import 'package:pharmacy_design/constants.dart';

void bagModalBottomSheet(context) {
  showModalBottomSheet(
      backgroundColor: Constants.darkPurple,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      isScrollControlled: true,
      enableDrag: true,
      context: context,
      builder: (BuildContext bc) {
        return Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
          height: MediaQuery.of(context).size.height - 50,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 50,
                child: Divider(
                  thickness: 3,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Row(
                    children: [
                      Icon(
                        Icons.shopping_bag,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        'Bag',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        '4',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 280,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: Text(
                  'Tap on an item to add, remove, delete options',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              MaterialButton(
                onPressed: () => null,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  width: 270,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    'Checkout',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
              )
            ],
          ),
        );
      });
}
