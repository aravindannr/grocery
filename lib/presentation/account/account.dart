import 'package:flutter/material.dart';
import 'package:grocery/presentation/account/userprofile.dart';

import 'CreditOptions.dart';
import 'CustomDivider.dart';
import 'accountContainer.dart';
import 'accountSettings.dart';
import 'emailUpdate.dart';
import 'feedBack.dart';
import 'myActivity.dart';


class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          UserProf(),
          accountContainer(),
          myDivider(),
          email(),
          myDivider(),
          creditOption(),
          myDivider(),
          accSettings(),
          myDivider(),
          myactivity(),
          feedback(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
                onPressed: () {},
                child: Text("Log Out"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black)),
          )
        ],
      ),
    );
  }
}
