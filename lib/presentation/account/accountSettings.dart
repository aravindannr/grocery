import 'dart:core';

import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class accSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Account Settings",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person, color: Colors.black),
            title: Text(
              "Edit profile",
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
          ),
          ListTile(
            leading: Icon(Icons.wallet, color: Colors.black),
            title: Text(
              "Saved Cards & Wallet",
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
          ),
          ListTile(
            leading: Icon(Icons.location_on_outlined, color: Colors.black),
            title: Text(
              "Saved Address",
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
          ),
          ListTile(
            leading: Icon(Icons.language, color: Colors.black),
            title: Text(
              "Select Language",
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
          ),
          ListTile(
            leading:
                Icon(Icons.edit_notifications_outlined, color: Colors.black),
            title: Text("Notification Settings"),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
