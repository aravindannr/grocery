import 'package:flutter/material.dart';
import 'package:grocery/presentation/splash.dart';
import 'package:provider/provider.dart';

import 'model/cartModel.dart';


void main()=>runApp(GroceryApp());

class GroceryApp extends StatelessWidget {
  const GroceryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  ChangeNotifierProvider(
      create: (context)=> CartModel(),
      child: MaterialApp(
        home: SplashScreen(),
        title: "SLR SHOPPEE",
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
