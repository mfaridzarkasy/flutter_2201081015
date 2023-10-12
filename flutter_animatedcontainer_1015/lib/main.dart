import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool click = false;
  double width =
      100.0; // Menggunakan double untuk menghindari tipe data yang tidak cocok.
  double height = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              // Mengubah nilai click dan menganimasikan perubahan dengan AnimatedContainer.
              click = !click;
              width = click ? 100.0 : 300.0;
              height = click ? 50.0 : 300.0;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            width: width,
            height: height,
            color: Colors.amber,
            curve: Curves.fastOutSlowIn,
            alignment: click ? Alignment.topCenter : Alignment.topCenter,
            child: Icon(
              Icons.phone_android,
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}
