import 'package:flutter/material.dart';
import 'package:shopping_app/global.dart';

class Details extends StatelessWidget {
  final int id;
  const Details({Key? key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<int> sizeList = [7, 8, 9, 10];
    List<Color> colorsList = [Colors.black, Colors.blue, Colors.red];
    return SafeArea(
      child: Scaffold(
        backgroundColor: adidas_products[id]["product_color"],
        body: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.shopping_cart),
                        color: Colors.white,
                        onPressed: () {},
                      )
                    ],
                  ),
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Image.network(
                            adidas_products[id]["product_image"],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: RawMaterialButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.crop_rotate,
                              color: Colors.blue,
                            ),
                            shape: CircleBorder(),
                            elevation: 2.0,
                            fillColor: Colors.white,
                            padding: const EdgeInsets.all(3.0),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, -1),
                      blurRadius: 5,
                      color: Colors.black12,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: <Widget>[
                            Text(
                              adidas_products[id]['product_name'],
                              style: TextStyle(fontSize: 21),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "\$${adidas_products[id]['product_price']}",
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: <Widget>[
                                Text(
                                  "Size:",
                                  style: TextStyle(fontSize: 21),
                                ),
                                SizedBox(width: 15),
                                for (var item in sizeList)
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 3.0),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      shape: BoxShape.circle,
                                    ),
                                    height: 25,
                                    width: 25,
                                    child: Text("$item"),
                                  ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: <Widget>[
                                Text(
                                  "Colors:",
                                  style: TextStyle(fontSize: 21),
                                ),
                                SizedBox(width: 15),
                                for (var item in colorsList)
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: item,
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Description",
                              style: TextStyle(fontSize: 21),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero illo perferendis porro commodi. Maiores, dolore quaerat? Quis, reiciendis nemo qui accusamus obcaecati consequuntur, aperiam ipsa corporis, quam maiores perferendis laborum!",
                              style: TextStyle(fontSize: 17),
                            )
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 45, vertical: 11),
                        backgroundColor: cyan,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                      ),
                      onPressed: () {},
                      child: Text("Add to Cart"),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
