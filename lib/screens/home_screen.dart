import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/home_category.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pin Trade'),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          Container(
            height: 600,
            child: GridView(
              children: DUMMY_CATEGORIES
                  .map(
                    (cat) => HomeCategory(
                      cat,
                    ),
                  )
                  .toList(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
