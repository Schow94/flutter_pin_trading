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
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Buy Pin',
              style: TextStyle(color: Colors.grey[600]),
            ),
            Text(
              '${selectedPin.name}',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 15,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.blue,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              color: Colors.blue,
            ),
          ),
        ],
      ),
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
                        margin: EdgeInsets.only(top: 20, bottom: 10),
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
                      Divider(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'About this seller',
                              style: TextStyle(fontSize: 20),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(
                                    'assets/images/Vic_profilePic.jpeg'),
                              ),
                              subtitle: Text(
                                  'Native to  beautiful and foggy San Francisco, Victoria can be found searching the web for the latest Disney pins on Facebook, Forums, and Ebay'),
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.lightBlue,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.lightBlue,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.lightBlue,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.lightBlue,
                                      ),
                                      Icon(
                                        Icons.star_half,
                                        color: Colors.lightBlue,
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        ' (4.5/5.0) Rating',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
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
                                  'Add to Wishlist ',
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
                                  'Buy Now ',
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
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          '${selectedPin.description}',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Details',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        // for (var detail in selectedPin.details) Text(detail),
                        // Equivalent to ^^ the above
                        ...selectedPin.details.map(
                          (val) => Text(
                            '- $val',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
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
