import 'package:flutter/material.dart';
import 'package:savory_scout/src/features/dish_details/views/dish_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFFBD59)),
        useMaterial3: true,
      ),
      home: const DishDetails(),
    );
  }
}
