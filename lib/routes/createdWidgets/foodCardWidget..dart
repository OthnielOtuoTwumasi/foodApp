import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String foodTitle;
  final String foodInfo;
  final int foodPrice;
  final String foodImage;

  FoodCard(
      {required this.foodTitle,
      required this.foodInfo,
      required this.foodPrice,
      required this.foodImage});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey[900],
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Expanded(
            child: ClipRRect(
              child: Image(
                image: AssetImage("assets/$foodImage"),
                fit: BoxFit.cover,
                height: 200,
              ),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
            ),
          ),
          Expanded(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 8, 0, 0),
                  child: Text(
                    //"Stir Fried Spaghetti",
                    foodTitle,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 2, 0, 0),
                  child: Text(
                    foodInfo,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                  child: Text(
                    //"GHC 95.00 ",
                    "  ${foodPrice.toString()}.00",
                    style: const TextStyle(
                        fontSize: 18,
                        //color: Colors.teal,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
