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
      borderRadius: BorderRadius.circular(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.network(
                imageUrl,
                height: 200,
                width: 200,
              ),
              Divider(),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
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
                          color: Colors.black,
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
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
