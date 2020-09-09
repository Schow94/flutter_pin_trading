import 'package:flutter/material.dart';

import '../screens/all_pins_screen.dart';
// import '../dummy_data.dart';

class HomeCategory extends StatelessWidget {
  final String category;
  final IconData icon;

  HomeCategory({@required this.category, @required this.icon});

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      AllPinsScreen.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Colors.blue[300],
      borderRadius: BorderRadius.circular(15),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          // margin: EdgeInsets.all(40),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.cyan[50],
            ),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.blue[200],
                // spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(3, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: Icon(icon, size: 50, color: Colors.pink),
              ),
              Text(
                category,
                style: TextStyle(fontSize: 20, color: Colors.grey[700]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
