import 'package:flutter/material.dart';

import '../screens/all_pins_screen.dart';

class HomeCategory extends StatelessWidget {
  final String category;

  HomeCategory(this.category);

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
          child: Center(
            child: Text(
              category,
              style: TextStyle(fontSize: 20),
            ),
          ),
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
        ),
      ),
    );
  }
}
