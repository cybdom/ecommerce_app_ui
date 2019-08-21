import 'package:flutter/material.dart';
import 'package:shopping_app/global.dart';
import 'dart:math';

import 'package:shopping_app/ui/widgets/product_container.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    int _activeBrand = 0;
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: <Widget>[
            Container(
              width: 71,
              color: blue,
              child: Column(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu, color: Colors.white),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(brands.length, (i) {
                        return FittedBox(
                          fit: BoxFit.cover,
                          child: Transform.rotate(
                            angle: -pi / 2,
                            child: Container(
                              height: 71,
                              child: GestureDetector(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "${brands[i]}",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(height: 3.0),
                                    i == _activeBrand
                                        ? Container(
                                            width: 9,
                                            height: 9,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                          )
                                        : Container()
                                  ],
                                ),
                                onTap: () {
                                  setState(() {
                                    _activeBrand = i;
                                  });
                                },
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.shopping_cart,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Image.network(
                    "https://point2vue.ch/wp-content/uploads/2015/08/Adidas-Logo-PNG-Image-e1497082879934.png",
                    height: 61,
                  ),
                  SizedBox(height: 9.0),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: adidas_products.length,
                      itemBuilder: (ctx, i) {
                        return ProductContainer(id: i);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
