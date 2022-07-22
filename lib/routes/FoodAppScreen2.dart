import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/myController.dart';
import '../model/arguments.dart';

final myProvider = Provider((ref) {
  return MyController();
});

class FoodAppScreen2 extends ConsumerStatefulWidget {
  const FoodAppScreen2({Key? key}) : super(key: key);

  @override
  _FoodAppScreen2State createState() => _FoodAppScreen2State();
}

class _FoodAppScreen2State extends ConsumerState<FoodAppScreen2> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(myProvider);
    final args = ModalRoute.of(context)!.settings.arguments as Arguments;
    return Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage("assets/${args.foodImageArgs}"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                  child: Text(
                    args.foodTitleArgs,
                    style: const TextStyle(
                        color: Colors.teal,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 7, 0, 7),
                  child: Text(
                    args.foodInfoArgs,
                    style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            // Row(
            //   //mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     TextButton(
            //         onPressed: () {
            //           controller.multiplier++;
            //           print(controller.multiplier);
            //         },
            //         child: const Icon(
            //           Icons.add,
            //           color: Colors.grey,
            //         )),
            //     TextButton(
            //         onPressed: () {
            //          setState(() {
            //            controller.multiplier++;
            //            print(controller.multiplier);
            //          });
            //         },
            //         child: const Icon(
            //           Icons.remove,
            //           color: Colors.grey,
            //         )),
            //     Text(controller.multiplier.toString()),
            //   ],
            // ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  onPressed: () {},
                  child: const Text(
                    "Purchase",
                  )),
            )
          ],
        ));
  }
}
