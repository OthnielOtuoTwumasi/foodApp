import 'package:flutter/material.dart';
import 'package:flutter_refresh/controller/myController.dart';
import 'package:flutter_refresh/model/arguments.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'createdWidgets/foodCardWidget..dart';

final myProvider = Provider((ref) {
  return MyController();
});

class FoodAppScreen1 extends ConsumerWidget {
  const FoodAppScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(myProvider);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text(
                  "Menu",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const Center(
                child: Text(
                  "Food Brings Joy",
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: controller.unmodifiedFoodCardList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/second",
                              arguments: Arguments(
                                  foodTitleArgs: controller
                                      .unmodifiedFoodCardList[index].foodTitle,
                                  foodInfoArgs: controller
                                      .unmodifiedFoodCardList[index].foodInfo,
                                  foodPriceArgs: controller
                                      .unmodifiedFoodCardList[index].foodPrice,
                                  foodImageArgs: controller
                                      .unmodifiedFoodCardList[index]
                                      .foodImage));
                        },
                        child: FoodCard(
                          foodTitle: controller
                              .unmodifiedFoodCardList[index].foodTitle,
                          foodInfo:
                              controller.unmodifiedFoodCardList[index].foodInfo,
                          foodPrice: controller
                              .unmodifiedFoodCardList[index].foodPrice,
                          foodImage: controller
                              .unmodifiedFoodCardList[index].foodImage,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}
