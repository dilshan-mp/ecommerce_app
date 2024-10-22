import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  int _quantity = 1;
  double _totalPrice = 0.0;

  int get quantity => _quantity;
  double get totalPrice => _totalPrice;

  void setPrice(double price) {
    _totalPrice = price * _quantity;
    notifyListeners();
  }

  void increasePrice(double price) {
    _quantity++;
    setPrice(price);
  }

  void decreasePrice(double price) {
    if (_quantity > 1) {
      _quantity--;
      setPrice(price);
    }
  }

  void reset() {
    _quantity = 1;
    _totalPrice = 0.0;
    notifyListeners();
  }
}
