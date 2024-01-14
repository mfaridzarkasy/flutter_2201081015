import 'package:flutter/material.dart';

main() {
  runApp(WidgetDasar());
}

class WidgetDasar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Widget Dasar')),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Text(
            'Hallo World',
          ),
        ),
      ),
    );
  }
}
