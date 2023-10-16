import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalHello(),
  ));
}

class HalHello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Container(
          color: Colors.blueAccent,
          width: 300.0,
          height: 300.0,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Muhammad Farid Zarkasy",
                  style: new TextStyle(
                      fontFamily: "Serif", fontSize: 20.0, color: Colors.white),
                ),
                Text(
                  "2201081015",
                  style: new TextStyle(
                      fontFamily: "Serif",
                      fontSize: 20.0,
                      color: Colors.yellow),
                ),
                Text(
                  "D3 Teknik Komputer",
                  style: new TextStyle(
                      fontFamily: "Serif",
                      fontSize: 20.0,
                      color: Colors.lightGreen),
                ),
                Text(
                  "Teknologi Informasi",
                  style: new TextStyle(
                      fontFamily: "Serif", fontSize: 20.0, color: Colors.grey),
                ),
                Text(
                  "Jl.Koto tuo No.15",
                  style: new TextStyle(
                      fontFamily: "Serif", fontSize: 20.0, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
