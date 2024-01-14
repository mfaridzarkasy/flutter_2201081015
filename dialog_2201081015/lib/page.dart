import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String data = "Udah makan belum?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Udah Makan?"),
                content:
                    Text("Kamu udah makan belum, kalau nggak aku sakit ni :v"),
                actions: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        data = "Ayok pergi makan ama akuh!";
                        Navigator.of(context).pop();
                      });
                    },
                    child: Text("Udah"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        data = "Iih kamu jahat!";
                        Navigator.of(context).pop();
                      });
                    },
                    child: Text("Belum"),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.account_tree),
      ),
    );
  }
}
