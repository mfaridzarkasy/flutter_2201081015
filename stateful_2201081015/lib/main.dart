import 'package:flutter/material.dart';

void main() {
  runApp(StatelessApp());
}

class StatelessApp extends StatefulWidget {
  @override
  State<StatelessApp> createState() => _StatelessAppState();
}

class _StatelessAppState extends State<StatelessApp> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text("Stateless"),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                counter.toString(),
                style: TextStyle(fontSize: 80),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                      print(counter);
                    },
                    child: Icon(Icons.add),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (counter != 1) {
                        setState(() {
                          counter--;
                        });
                      }
                      print(counter);
                    },
                    child: Icon(Icons.remove),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
