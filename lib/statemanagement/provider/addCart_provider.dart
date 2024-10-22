import 'package:flutter/cupertino.dart';

class CartItem {
  final String? title;
  final dynamic price;
  final String? image;
  int quantity;

  CartItem({this.title, this.price, this.image, this.quantity = 1});
}

class AddtoCartProvider extends ChangeNotifier {
  final List<CartItem> _cartItem = [];
  List<CartItem> get cartItem => _cartItem;

  void addToCart(String? title, dynamic price, String? image) {
    var existingItem = _cartItem.firstWhere(
      (element) => element.title == title,
      orElse: () => CartItem(),
    );
    if (existingItem.title != null) {
      existingItem.quantity++;
    } else {
      _cartItem.add(
        CartItem(
          title: title,
          price: price,
          image: image,
        ),
      );
    }
    notifyListeners();
  }

  void removeCartItem(int index) {
    if (index >= 0 && index < _cartItem.length) {
      _cartItem.removeAt(index);
      notifyListeners();
    }
  }
}
