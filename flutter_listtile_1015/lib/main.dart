import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Tile"),
        ),
        body: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              title: Text("Muhammad Farid Zarkasy"),
              subtitle: Text("this is subtitutle okay .."),
              leading: CircleAvatar(),
              trailing: Text(
                "10:00 PM",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              //tileColor:Color.amber,
              dense: true,
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              title: Text("Muhammad Farid Zarkasy"),
              subtitle: Text("this is subtitutle okay .."),
              leading: CircleAvatar(),
              trailing: Text(
                "10:00 PM",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              //tileColor:Color.amber,
              dense: true,
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              title: Text("Muhammad Farid Zarkasy"),
              subtitle: Text("this is subtitutle okay .."),
              leading: CircleAvatar(),
              trailing: Text(
                "10:00 PM",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              //tileColor:Color.amber,
              dense: true,
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              title: Text("Muhammad Farid Zarkasy"),
              subtitle: Text("this is subtitutle okay .."),
              leading: CircleAvatar(),
              trailing: Text(
                "10:00 PM",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              //tileColor:Color.amber,
              dense: true,
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              title: Text("Muhammad Farid Zarkasy"),
              subtitle: Text("this is subtitutle okay .."),
              leading: CircleAvatar(),
              trailing: Text(
                "10:00 PM",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              //tileColor:Color.amber,
              dense: true,
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              title: Text("Muhammad Farid Zarkasy"),
              subtitle: Text("this is subtitutle okay .."),
              leading: CircleAvatar(),
              trailing: Text(
                "10:00 PM",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              //tileColor:Color.amber,
              dense: true,
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              title: Text("Muhammad Farid Zarkasy"),
              subtitle: Text("this is subtitutle okay .."),
              leading: CircleAvatar(),
              trailing: Text(
                "10:00 PM",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              //tileColor:Color.amber,
              dense: true,
            ),
          ],
        ),
      ),
    );
  }
}
