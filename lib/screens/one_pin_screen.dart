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
      body: Container(
        child: Column(
          children: <Widget>[
            Image.network(selectedPin.imageUrl),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      selectedPin.name,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Text(
                    '\$${selectedPin.price}',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                // Want to left align descripton header
                Align(
                  child: Text('Description'),
                ),
                Text('${selectedPin.description}'),
              ],
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text('Details'),
                  // Unable to show ListView unless I wrap it in a container w/
                  // a fixed height
                  // Expanded() is not working
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, idx) => Text(selectedPin.details[idx]),
                    itemCount: selectedPin.details.length,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
