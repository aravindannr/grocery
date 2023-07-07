import 'package:flutter/material.dart';

class email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(
          "Add/Verify your Email",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text("Get latest updates of your orders"),
        trailing: ElevatedButton(
          onPressed: () {},
          child: Text("Update"),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        ),
      ),
    );
  }
}
