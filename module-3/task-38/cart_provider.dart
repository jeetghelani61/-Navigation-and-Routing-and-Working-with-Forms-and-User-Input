import 'package:flutter/foundation.dart';

class CartProvider extends ChangeNotifier {
  double total = 0;

  void addItem(double price) {
    total += price;
    notifyListeners();
  }

  void removeItem(double price) {
    total -= price;
    if (total < 0) total = 0;
    notifyListeners();
  }
}
