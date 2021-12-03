import 'package:flutter/foundation.dart';

class CategoryData {
  final String id;
  final String title;
  final String image;

  const CategoryData({
    @required this.id,
    @required this.title,
    @required this.image,
  });
}





class Drug {
  final String id;
  final String title;
  final double price;

  Drug({
   this.id,
   this.title,
   this.price
});
}