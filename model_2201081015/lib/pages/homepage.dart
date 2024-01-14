import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '/./models/product.dart';

class HomePage extends StatelessWidget {
  Faker faker = new Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(
      10,
      (index) => Product(
        'https://picsum.photos/200/200',
        faker.food.restaurant(),
        10000 + Random().nextInt(10000),
        faker.lorem.sentence(),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Market Place"),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: GridTile(
              child: Image.network(dummyData[index].imageUrl),
              footer: Container(
                color: Colors.blueAccent,
                child: Column(
                  children: [
                    Text(
                      dummyData[index].namaBarang,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text("Rp. ${dummyData[index].harga.toString()}"),
                    Text(
                      dummyData[index].deskripsi,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
