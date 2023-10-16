import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTabs = [
    Tab(
      text: "Tab 1",
      icon: Icon(Icons.add_a_photo),
    ),
    Tab(
      icon: Icon(Icons.ac_unit_outlined),
      text: "Tab 2",
    ),
    Tab(
      icon: Icon(Icons.accessibility_rounded),
      text: "Tab 3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 0, // Change the initial index if needed
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My Family"),
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.normal,
              ),
              indicator: BoxDecoration(
                color: Colors.amber,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 5,
                  ),
                ),
              ),
              tabs: myTabs,
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Content of Tab 1", style: TextStyle(fontSize: 40)),
              ),
              Center(
                child: Text("Content of Tab 2", style: TextStyle(fontSize: 40)),
              ),
              Center(
                child: Text("Content of Tab 3", style: TextStyle(fontSize: 40)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
