import 'package:flutter/material.dart';

import '../model/arguments.dart';

class FoodAppScreen2 extends StatelessWidget {
   const FoodAppScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Arguments;
    return Container(
      child: ListView(
        children: [

        ],
      )
    );
  }
}
