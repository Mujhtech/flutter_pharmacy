import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pharmacy_design/constants.dart';
import 'package:pharmacy_design/screens/single_product.dart';
import 'package:pharmacy_design/widgets/bottom_sheet.dart';
import 'package:pharmacy_design/widgets/filter_box.dart';
import 'package:pharmacy_design/widgets/product_card.dart';
import 'package:pharmacy_design/widgets/search_bar.dart';

class StoreScreen extends StatefulWidget {
  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  bool isSearch = true;

  void _enableSearch() {
    setState(() {
      isSearch = !isSearch;
    });
  }

  @override
  Widget build(BuildContext context) {
    void _isDragUp(DragEndDetails details) {
      bagModalBottomSheet(context);
    }

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
            '${productLists.length} Item(s)',
            style: TextStyle(
                fontWeight: FontWeight.w600, color: Colors.black, fontSize: 14),
          ),
          backgroundColor: Colors.white,
        ),
        body: Stack(children: [
          Column(children: [
            FilterBox(
              isSearch: () => _enableSearch(),
            ),
            SizedBox(
              height: 10,
            ),
            if (isSearch) SearchBar(),
            SizedBox(
              height: 20,
            ),
            Flexible(
                fit: FlexFit.loose,
                child: GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                  childAspectRatio: 0.8,
                  children: List.generate(productLists.length, (index) {
                    return InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SingleProductScreen(
                          title: productLists[index].name,
                          price: productLists[index].price,
                          soldby: productLists[index].soldBy,
                          id: productLists[index].id,
                          constituents: productLists[index].constituents,
                          packSize: productLists[index].packSize,
                          dispenseMethod: productLists[index].dispenseMethod,
                        );
                      })),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10, top: 10, right: 10),
                        child: ProductCard(
                          title: productLists[index].name,
                          price: productLists[index].price,
                        ),
                      ),
                    );
                  }),
                )),
          ]),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white.withOpacity(0.1), Colors.white],
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              child: GestureDetector(
                onVerticalDragEnd: _isDragUp,
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Constants.darkPurple,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Divider(
                          color: Colors.white,
                          thickness: 2.5,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                      )
                    ],
                  ),
                ),
              ))
        ]));
  }
}
