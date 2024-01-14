import 'package:flutter/material.dart';
import '../providers/cart.dart';
import '../screens/cart_screen.dart';
import '../widgets/badge.dart';
import 'package:provider/provider.dart';

import '../widgets/product_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          Consumer<Cart>(
            builder: (context, value, ch) {
              return Badges(
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      CartScreen.routeName,
                    );
                  },
                  icon: Icon(Icons.shopping_cart),
                ),
                value: value.jumlahCart.toString(),
                color: Colors.white,
              );
            },
          ),
        ],
      ),
      body: ProductGrid(),
    );
  }
}
