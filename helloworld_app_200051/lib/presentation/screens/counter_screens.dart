import 'package:flutter/material.dart';

class CounterScreens extends StatefulWidget {
  //final int clickCounter = 0;

  const CounterScreens({super.key});

  @override
  State<CounterScreens> createState() => _CounterScreensState();
}

class _CounterScreensState extends State<CounterScreens> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contador-200051"),
        ),
        body: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$clickCounter',
                    style: const TextStyle(
                        fontSize: 160, fontWeight: FontWeight.w100)),
                const Text(
                  'Clicks',
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            clickCounter++;
            setState(() {
              
            });
          },
          child: Icon(Icons.plus_one),
        ));
  }
}
