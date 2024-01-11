import 'package:flutter/material.dart';
import 'package:shopping_app/global.dart';
import 'package:shopping_app/ui/screens/screens.dart';

class ProductContainer extends StatelessWidget {
  final int id;

  const ProductContainer({Key? key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _containerColor = adidas_products[id]['product_color'];
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 13.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35.0),
        color: _containerColor,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) {
                return Details(id: id);
              },
            ),
          );
        },
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Image.network(
                adidas_products[id]["product_image"],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "${adidas_products[id]["product_name"]}",
                            style: TextStyle(color: Colors.white, fontSize: 21),
                          ),
                          Text(
                            "${adidas_products[id]["product_price"]}",
                            style: TextStyle(color: Colors.white, fontSize: 21),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
