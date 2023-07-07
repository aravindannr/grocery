import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../presentation/cartPage.dart';


class BottomNavBar extends StatefulWidget {

  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Container(
        height: kBottomNavigationBarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                });
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                });
              },
              icon: Icon(Icons.favorite),
            ),

            IconButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartPage()),
                  );
                });
              },
              icon: Icon(Icons.shopping_cart),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                });
              },
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
