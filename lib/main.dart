import 'package:flutter/material.dart';

import './screens/home_screen.dart';
import './screens/all_pins_screen.dart';
import './screens/one_pin_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pin Trade',
      initialRoute: '/',
      routes: {
        '/': (ctx) => HomeScreen(),
        AllPinsScreen.routeName: (ctx) => AllPinsScreen(),
        OnePinScreen.routeName: (ctx) => OnePinScreen(),
      },
    );
  }
}
