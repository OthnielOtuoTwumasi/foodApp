import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_refresh/routes/createdWidgets/foodCardWidget..dart';

class MyController extends ChangeNotifier {
  final List<FoodCard> _foodCardList = [
    FoodCard(
      foodTitle: "Stir Fried Spaghetti",
      foodInfo: "Spaghetti delight with the best veggies and meat you from India",
      foodPrice: 80,
      foodImage: "spag.jpg",
    ),
    FoodCard(
      foodTitle: "Fried Rice With Ninja Cut Chicken",
      foodInfo:
      "Assorted fried rice with cut up chicken breast. Inspired by Japanese culture",
      foodPrice: 95,
      foodImage: "rice and chicken.jpg",
    ),
    FoodCard(
      foodTitle: "Kimchi Noodle Soup with Dumplings  ",
      foodInfo:
      "Noodles in a really flavourful and umami kimchi broth with mushrooms, dumplings, and veggies",
      foodPrice: 150,
      foodImage: "noodles.jpg",
    ),
  ];

  UnmodifiableListView<FoodCard> get unmodifiedFoodCardList {
    return UnmodifiableListView(_foodCardList);
  }

}