import 'package:flutter/material.dart';

import '../presentation/notification.dart';
import '../utils/colorConstant/colors.dart';

class App_Bar_sliver extends StatelessWidget {
  const App_Bar_sliver({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: white,
      title: Align(
        alignment: Alignment.centerLeft,
        child: RichText(
          text: TextSpan(
            text: 'GRO',
            style: TextStyle(
                color: orange,
                fontFamily: 'poppins',
                fontSize: 30,
                fontWeight: FontWeight.bold),
            children: const [
              TextSpan(
                text: 'CERY',
                style: TextStyle(
                    color: blue,
                    fontFamily: 'poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
      floating: true,
      leading: Icon(
        color: blue,
        (Icons.shopping_cart_outlined),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: brown,
          child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationScreen(),
                  ),
                );
              },
              icon: Icon(
                Icons.notifications_active_outlined,
                color: blue,
              )),
        ),
      ],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      elevation: 16,
    );
  }
}
