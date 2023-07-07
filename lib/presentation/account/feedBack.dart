import 'package:flutter/material.dart';

class feedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Feedback & Information",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      ListTile(
        leading: Icon(Icons.library_add_check_outlined, color: Colors.black),
        title: Text(
          "Terms,Policies & Licenses",
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
      ),
      ListTile(
        leading: Icon(Icons.question_mark_rounded, color: Colors.black),
        title: Text(
          "Brows FAQ's",
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
      ),
    ]));
  }
}
