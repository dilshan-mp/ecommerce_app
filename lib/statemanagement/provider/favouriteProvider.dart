import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  List<int> _favouriteItems = [];
  List<int> get favouriteItems => _favouriteItems;
  void toggleFavorite(int index) {
    if (_favouriteItems.contains(index)) {
      _favouriteItems.remove(index);
    } else {
      _favouriteItems.add(index);
    }
    notifyListeners();
  }

  bool isFavorite(int index) {
    return _favouriteItems.contains(index);
  }
}
