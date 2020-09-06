import 'package:flutter/foundation.dart';

class Pin {
  final String name;
  final String id;
  final String imageUrl;
  final int price;
  final String description;
  final List<String> details;

  const Pin({
    @required this.name,
    @required this.id,
    @required this.imageUrl,
    @required this.price,
    @required this.description,
    @required this.details,
  });
}
