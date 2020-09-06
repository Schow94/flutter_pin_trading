import 'package:flutter/material.dart';

import '../dummy_data.dart';

class AllPinsScreen extends StatelessWidget {
  static const routeName = '/pins';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text('View All Pins'),
      ),
      body: GridView(
        padding: EdgeInsets.all(15),
        children: DUMMY_PINS
            .map(
              (pinData) => InkWell(
                onTap: () {},
                splashColor: Colors.red,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.network(
                        pinData.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.grey[300],
                        child: Text(pinData.name),
                      ),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
