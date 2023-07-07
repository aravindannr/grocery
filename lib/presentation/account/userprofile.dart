import 'package:flutter/material.dart';

class UserProf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("user@example.com"),
      subtitle: Text("Join Grocery Plus"),
      trailing: Icon(Icons.person_add_alt_rounded),
    );
  }
}
