import 'package:flutter/material.dart';
import 'package:nested_smanagement_2201082012/providers/cart.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cartItem = Provider.of<Cart>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(20),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Text("Total : \$ ${cartItem.totalHarga}"),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cartItem.itemCart!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(
                    "${cartItem.itemCart!.values.toList()[index].title}",
                  ),
                  subtitle: Text(
                      "Quantity: ${cartItem.itemCart!.values.toList()[index].qty.toInt()}"),
                  trailing: Text(
                    "\$ ${cartItem.itemCart!.values.toList()[index].qty * cartItem.itemCart!.values.toList()[index].price}",
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
