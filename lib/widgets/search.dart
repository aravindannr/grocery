import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class Search_Box extends StatelessWidget {
  const Search_Box({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey[200],
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search',
            border: InputBorder.none,
            suffixIcon: Icon(Icons.search,color: blue,)
        ),
      ),
    );
  }
}
