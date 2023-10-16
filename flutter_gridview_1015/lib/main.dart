import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid View"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10,
              childAspectRatio: 4 / 3,
            ),
            itemCount: 90,
            itemBuilder: (context, index) {
              return Container(
                color: Color.fromARGB(
                  255,
                  Random().nextInt(255),
                  Random().nextInt(256),
                  Random().nextInt(256),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
