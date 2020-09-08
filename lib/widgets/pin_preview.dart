import 'package:flutter/material.dart';

import '../screens/one_pin_screen.dart';

class PinPreview extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String id;
  final int price;
  final List details;

  PinPreview(
      {@required this.name,
      @required this.imageUrl,
      @required this.id,
      @required this.price,
      @required this.details});

  void selectPin(BuildContext context) {
    Navigator.of(context).pushNamed(OnePinScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectPin(context),
      splashColor: Colors.red,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          // decoration: BoxDecoration(
          //   boxShadow: [
          //     BoxShadow(
          //       offset: Offset(3, 5),
          //       blurRadius: 5,
          //       color: Colors.blue[200],
          //     ),
          //   ],
          // ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          '${name.substring(0, 20)}...',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Text(
                        '\$$price',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
