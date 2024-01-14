import 'package:flutter/material.dart';
import '../models/cart_item.dart';

class Cart with ChangeNotifier {
  Map<String, cartItem> _itemCart = {};

  Map<String, cartItem>? get itemCart => _itemCart;

  int get jumlahCart {
    return _itemCart.length;
  }

  double get totalHarga {
    double total = 0;
    _itemCart.forEach(
      (key, cartItem) {
        total += cartItem.qty * cartItem.price.toDouble();
      },
    );
    return total;
  }

  void addCart(String productId, String title, int price) {
    if (_itemCart.containsKey(productId)) {
      _itemCart.update(
        productId,
        (value) => cartItem(
          id: value.id,
          title: value.title,
          price: value.price,
          qty: value.qty + 1,
        ),
      );
    } else {
      _itemCart.putIfAbsent(
        productId,
        () => cartItem(
            id: DateTime.now().toString(), title: title, price: price, qty: 1),
      );
    }
    notifyListeners();
  }
}
