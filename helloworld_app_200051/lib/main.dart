import 'package:flutter/material.dart';
import 'package:helloworld_app_200051/presentation/screens/counter_functions_screen.dart';
//import 'package:helloword_app_210562/presentation/Screens/counter/counter_screen.dart';
//import 'package:helloword_app_210562/presentation/screens/counter/counter_functions_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        fontFamily: 'Oswald',
      ),
      home: const CounterFunctionsScreen()
    );
  }
}