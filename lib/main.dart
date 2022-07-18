import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_refresh/routes/FoodAppScreen1.dart';
import 'package:flutter_refresh/routes/FoodAppScreen2.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(ProviderScope(
      child: MaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => const FoodAppScreen1(),
          "/second": (context) => const FoodAppScreen2(),
        },
      ),
    ));
// theme: ThemeData(
//     textTheme:
//         const TextTheme(headline4: TextStyle(color: Colors.pinkAccent))),
