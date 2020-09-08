import 'package:flutter/material.dart';
import '../dummy_data.dart';

class OnePinScreen extends StatelessWidget {
  static const routeName = '/one-pin';

  @override
  Widget build(BuildContext context) {
    final pinId = ModalRoute.of(context).settings.arguments as String;

    final selectedPin = DUMMY_PINS.firstWhere((pin) => pin.id == pinId);
    // Same as where().first since where returns an iterable

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Image.network(selectedPin.imageUrl),
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Flexible(
                              child: Text(
                                selectedPin.name,
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              '\$${selectedPin.price}',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(10),
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Add to Wishlist',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Icon(Icons.favorite),
                              ],
                            ),
                            color: Colors.pink,
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(10),
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Buy Now',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Icon(Icons.shopping_cart),
                              ],
                            ),
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Want to left align descripton header
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Text('${selectedPin.description}'),
                      Divider(),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'Details',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // for (var detail in selectedPin.details) Text(detail),
                      // Equivalent to ^^ the above
                      ...selectedPin.details.map(
                        (val) => Text('- ${val}'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
