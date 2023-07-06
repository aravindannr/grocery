import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colorConstant/colors.dart';

class DairyItems extends StatefulWidget {
  final int index;

  DairyItems(this.index);


  @override
  State<DairyItems> createState() => _DairyItemsState();
}

class _DairyItemsState extends State<DairyItems> {
  List<String> img = [
    "assets/images/cute-avocado-cartoon-icon-illustration-free-vector.jpg",
    "assets/images/cute-avocado-cartoon-icon-illustration-free-vector.jpg",
    "assets/images/cute-avocado-cartoon-icon-illustration-free-vector.jpg",
    "assets/images/cute-avocado-cartoon-icon-illustration-free-vector.jpg",
    "assets/images/cute-avocado-cartoon-icon-illustration-free-vector.jpg",
    "assets/images/cute-avocado-cartoon-icon-illustration-free-vector.jpg",
  ];

  List<String> itemName = [
    "Avocado",
    "Avocado",
    "Avocado",
    "Avocado",
    "Avocado",
    "Avocado",
  ];

  List<String> itemPrice = [
    "4.00",
    "4.00",
    "4.00",
    "4.00",
    "4.00",
    "4.00",
  ];

  List<Map> items=[
    {
     " image " : "assets/images/cute-avocado-cartoon-icon-illustration-free-vector.jpg",
      "itemName" :"Avocado",
      "itemPrice" :"4.00"
    },{

    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // item image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Image.asset(
                img[widget.index],
                height: 64,
              ),
            ),

            // item name
            Text(
              itemName[widget.index],
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            MaterialButton(
              onPressed: () {
              },
              color: green,
              child: Text(
                '\$' + itemPrice[widget.index],
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
