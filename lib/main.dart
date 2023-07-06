import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/screens/homepage.dart';

void main()=>runApp(GroceryApp());

class GroceryApp extends StatelessWidget {
  const GroceryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Homepage(),
      title: "SLR SHOPPEE",
      debugShowCheckedModeBanner: false,
    );
  }
}
