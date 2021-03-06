import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/pin_preview.dart';

class AllPinsScreen extends StatelessWidget {
  static const routeName = '/pins';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('View All Pins'),
      ),
      body: Container(
        // height: MediaQuery.of(context).size.height * 0.86,
        margin: EdgeInsets.only(top: 10),
        child: GridView(
          padding: EdgeInsets.all(15),
          children: DUMMY_PINS
              .map(
                (pinData) => PinPreview(
                  name: pinData.name,
                  imageUrl: pinData.imageUrl,
                  id: pinData.id,
                  price: pinData.price,
                  details: pinData.details,
                ),
              )
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 0.6,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}
