import 'package:flutter/material.dart';
import 'package:pharmacy_design/constants.dart';
import 'package:pharmacy_design/widgets/cart_increment.dart';
import 'package:pharmacy_design/widgets/product_detail.dart';

class SingleProductScreen extends StatelessWidget {
  final int price;
  final String title;
  final String soldby;
  final String id;
  final String dispenseMethod;
  final String constituents;
  final String packSize;
  SingleProductScreen(
      {this.price,
      this.title,
      this.soldby,
      this.constituents,
      this.dispenseMethod,
      this.id,
      this.packSize});
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
            color: Colors.black,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.black, fontSize: 18),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
            child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Constants.darkPurple,
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                    size: 20,
                  ),
                  Text(
                    '4',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ])),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image(
                image: AssetImage("assets/images/garlic.jpg"),
                height: 150,
              ),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Text(
              'Oral Suspension 250mg',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Constants.grayColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sold by',
                      style:
                          TextStyle(fontSize: 14, color: Constants.grayColor),
                    ),
                    Text(
                      soldby,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CartIncrement(),
                Text(
                  'NGN $price',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Product Details',
              style: TextStyle(
                  fontSize: 18,
                  color: Constants.grayColor,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductDetail(
                  text1: "Pack Size",
                  text2: packSize,
                  icon: Icons.qr_code_scanner,
                ),
                ProductDetail(
                  text1: "Product ID",
                  text2: id,
                  icon: Icons.qr_code_scanner,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ProductDetail(
              text1: "Constituents",
              text2: constituents,
              icon: Icons.qr_code_scanner,
            ),
            SizedBox(
              height: 20,
            ),
            ProductDetail(
              text1: "Dispensed In",
              text2: dispenseMethod,
              icon: Icons.qr_code_scanner,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                '1 pack of Garlic oil contain 3 unit(s) of 10 tablets',
                style: TextStyle(color: Constants.grayColor, fontSize: 14),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: MaterialButton(
                onPressed: () => null,
                color: Constants.darkPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: 270,
                  height: 50,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_bag,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        'Add to bag',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
