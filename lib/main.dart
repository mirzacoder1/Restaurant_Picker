import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> restaurants = [
    'McDonald\'s',
    'Star Buck\'s',
    'Pizza Hut',
    'Domino\'s',
    'Burger King'
  ];

  int CurrentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("What do you want to eat?"),
              Text(
                restaurants[CurrentIndex],
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              TextButton(
                child: Text("Choose Restaurant"),
                onPressed: () async {
                  updateIndex();
                  await Duration(seconds: 2);
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    minimumSize: Size(150, 40)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void updateIndex() {
    final random = Random();
    final index = random.nextInt(restaurants.length);
    setState(() {
      CurrentIndex = index;
    });
  }
}
