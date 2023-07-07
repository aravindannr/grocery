import 'package:flutter/material.dart';

class myactivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "My Activity",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      ListTile(
        leading: Icon(Icons.edit_square, color: Colors.black),
        title: Text(
          "Reviews",
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
      ),
      ListTile(
        leading: Icon(Icons.question_answer_outlined, color: Colors.black),
        title: Text(
          "Question & Answers",
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
      ),
    ]));
  }
}
