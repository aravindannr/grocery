import 'package:flutter/material.dart';

class creditOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Credit Option",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          ListTile(
            leading: Icon(Icons.credit_card, color: Colors.black),
            title: Text("Axis Bank Credit Card"),
            subtitle: Text("Appply & GEt Rs.1000 worth Benefits"),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
          ),
          ListTile(
            leading: Icon(
              Icons.currency_rupee_rounded,
              color: Colors.black,
            ),
            title: Text("Pay Later"),
            subtitle: Text("Get amazing offers with pay later"),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
          )
        ],
      ),
    );
  }
}
