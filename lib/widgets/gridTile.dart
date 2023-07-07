import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/utils/colorConstant/colors.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final void Function()? onPressed;

  GroceryItemTile({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.brown[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Image.asset(
                imagePath,
                height: 64,
              ),
            ),
            Text(
              itemName,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            MaterialButton(
              onPressed: onPressed,
              color: green,
              child: Text(
                '\u20B9' + itemPrice,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
