import 'package:flutter/material.dart';
import 'package:helloworld_app_200051/presentation/screens/counter_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:ThemeData(
        colorSchemeSeed: Colors.green
        ),
        
        home: const CounterScreens());
  }
}
