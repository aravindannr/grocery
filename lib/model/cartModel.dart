import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _Fruitsitems = [
    ["assets/images/avocoda11-1200x1308.jpg", "Avocado", "160"],
    ["assets/images/apple.jpg", "Apple", "140"],
    ["assets/images/fresh-list-fruit-orange-600x600.jpg", "orange", "80"],
    ["assets/images/what-are-grapes-5193263-hero-01-80564d77b6534aa8bfc34f378556e513.jpg", "grape", "70"],
    ["assets/images/ALR-strawberry-fruit-or-vegetable-f6dd901427714e46af2d706a57b9016f.jpg", "Strawberry", "300"],
    ["assets/images/product-packshot-mango.jpg", "Mango", "110"],
  ];
  final List _Vegetableitems = [
    ["assets/images/download (3).jpeg", "Tomato", "80"],
    ["assets/images/download (3).jpeg", "Tomato", "80"],
    ["assets/images/download (3).jpeg", "Tomato", "80"],
    ["assets/images/download (3).jpeg", "Tomato", "80"],
    ["assets/images/download (3).jpeg", "Tomato", "80"],
    ["assets/images/download (3).jpeg", "Tomato", "80"],
  ];
  final List _Bakeryitems = [
    ["assets/images/download (2).jpeg", "Sweets", "200"],
    ["assets/images/download (2).jpeg", "Sweets", "200"],
    ["assets/images/download (2).jpeg", "Sweets", "200"],
    ["assets/images/download (2).jpeg", "Sweets", "200"],
    ["assets/images/download (2).jpeg", "Sweets", "200"],
    ["assets/images/download (2).jpeg", "Sweets", "200"],
  ];
  final List _Dairyitems = [
    ["assets/images/yogurt", "Yogurt", "30"],
    ["assets/images/yogurt", "Yogurt", "30"],
    ["assets/images/yogurt", "Yogurt", "30"],
    ["assets/images/yogurt", "Yogurt", "30"],
    ["assets/images/yogurt", "Yogurt", "30"],
    ["assets/images/yogurt", "Yogurt", "30"],
  ];
  final List _Frozenitems = [
    ["assets/images/images.jpeg", "Chicken", "150"],
    ["assets/images/images.jpeg", "Chicken", "150"],
    ["assets/images/images.jpeg", "Chicken", "150"],
    ["assets/images/images.jpeg", "Chicken", "150"],
    ["assets/images/images.jpeg", "Chicken", "150"],
    ["assets/images/images.jpeg", "Chicken", "150"],
  ];
  final List _Snacksitems = [
    ["assets/images/download.jpeg", "Achappam", "50"],
    ["assets/images/download.jpeg", "Achappam", "50"],
    ["assets/images/download.jpeg", "Achappam", "50"],
    ["assets/images/download.jpeg", "Achappam", "50"],
    ["assets/images/download.jpeg", "Achappam", "50"],
    ["assets/images/download.jpeg", "Achappam", "50"],
  ];
  List _cartItems = [];
  List<dynamic> _lastAddedItem = [];

  get cartItems => _cartItems;

  get fruisitems => _Fruitsitems;
  get vegetableitems => _Vegetableitems;
  get bakeryitems=>_Bakeryitems;
  get  dairyitems =>_Dairyitems;
  get frozenitems => _Frozenitems;
  get snacksitems => _Snacksitems;
  void FaddItemToCart(int index) {
    _cartItems.add(_Fruitsitems[index]);
    _lastAddedItem = fruisitems[index];
    notifyListeners();
  }
  void VaddItemToCart(int index) {
    _cartItems.add(_Vegetableitems[index]);
    _lastAddedItem = vegetableitems[index];
    notifyListeners();
  }
  void BaddItemToCart(int index) {
    _cartItems.add(_Bakeryitems[index]);
    _lastAddedItem = bakeryitems[index];
    notifyListeners();
  }
  void DaddItemToCart(int index) {
    _cartItems.add(_Dairyitems[index]);
    _lastAddedItem = dairyitems[index];
    notifyListeners();
  }
  void FraddItemToCart(int index) {
    _cartItems.add(_Frozenitems[index]);
    _lastAddedItem = frozenitems[index];
    notifyListeners();
  }
  void SaddItemToCart(int index) {
    _cartItems.add(_Snacksitems[index]);
    _lastAddedItem = snacksitems[index];
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
