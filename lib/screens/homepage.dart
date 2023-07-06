import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/widgets/carousal.dart';

import '../widgets/appbar.dart';
import '../widgets/category_tab.dart';
import '../widgets/search.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: CustomScrollView(slivers: [
      App_Bar_sliver(),
      SliverList(
          delegate: SliverChildListDelegate([
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Search_Box(),
        ),
        Carousal(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Search By Category",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "poppins",
            ),
          ),
        ),
        Container(height: 80, child: ItemsTab())
      ]))
    ])));
  }
}
