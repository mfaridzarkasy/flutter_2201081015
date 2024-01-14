import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => Counter(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Review"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Counter>(
            builder: (context, value, child) => Text(
              value.counter.toString(),
              style: TextStyle(fontSize: 50),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: counter.minusCounter,
                icon: Icon(Icons.remove),
              ),
              IconButton(
                onPressed: counter.resetCountertoZero,
                icon: Icon(Icons.delete),
              ),
              IconButton(
                onPressed: counter.plusCounter,
                icon: Icon(Icons.add),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Counter with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void plusCounter() {
    _counter += 1;
    if (_counter > 5) {
      _counter += 5;
    }
    notifyListeners();
  }

  void minusCounter() {
    _counter -= 1;
    notifyListeners();
  }

  void resetCountertoZero() {
    _counter = 0;
    notifyListeners();
  }
}
