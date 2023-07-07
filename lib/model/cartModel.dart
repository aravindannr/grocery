import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _Bakeryitems = [
    ["assets/images/avocoda11-1200x1308.jpg", "Avocado", "160"],
    ["assets/images/apple.jpg", "Apple", "140"],
    ["assets/images/fresh-list-fruit-orange-600x600.jpg", "orange", "80"],
    ["assets/images/what-are-grapes-5193263-hero-01-80564d77b6534aa8bfc34f378556e513.jpg", "grape", "70"],
    ["assets/images/ALR-strawberry-fruit-or-vegetable-f6dd901427714e46af2d706a57b9016f.jpg", "Strawberry", "300"],
    ["assets/images/product-packshot-mango.jpg", "Mango", "110"],
  ];
  List _cartItems = [];
  List<dynamic> _lastAddedItem = [];

  get cartItems => _cartItems;

  get items => _Bakeryitems;

  void addItemToCart(int index) {
    _cartItems.add(_Bakeryitems[index]);
    _lastAddedItem = items[index];
    notifyListeners();
  }

  void undoLastItem() {
    if (_lastAddedItem.isNotEmpty) {
      _cartItems.removeLast();
      _lastAddedItem = [];
      notifyListeners();
    }
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][2]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
