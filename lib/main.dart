import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  double counter = 0;
  double width = 250;
  double height = 250;
  double borderRadius = 5;
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: AnimatedContainer(
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(borderRadius)),
            duration: const Duration(milliseconds: 950),
            height: width,
            width: height,
            child: Center(child: Text(counter.toString())),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              width = 30 + Random().nextInt(300).toDouble();
              height = 30 + Random().nextInt(300).toDouble();
              color = Color.fromRGBO(Random().nextInt(256),
                  Random().nextInt(256), Random().nextInt(256), 1.0);
              borderRadius = 1 + Random().nextInt(350).toDouble();
              counter = 0 + Random().nextInt(10000).toDouble();
            });
          },
        ),
      ),
    );
  }
}
