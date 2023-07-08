import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/presentation/account/userprofile.dart';

import '../../utils/colorConstant/colors.dart';
import '../../widgets/bottomBar.dart';
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
      appBar: AppBar(
        backgroundColor: brown,
        title: UserProf(),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(14))),
        elevation: 16,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: blue,
            size: 25,
          ),
        ),
      ),
      body: ListView(
        children: [
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
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
