import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/constant.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: yellow,
       title:Text(
         " My cart",
         style:  GoogleFonts.notoSerif(
           fontSize: 25,
           fontWeight: FontWeight.bold,
         ),
       ),
       shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.vertical(bottom: Radius.circular(14))),
       elevation: 16,
       leading: IconButton(onPressed: () {
         Navigator.pop(context);
       }, icon: Icon(Icons.arrow_back,color: blue,size: 25,),),
     ),
      body: Center(
        child: Text('Your cart is empty.'),
      ),
    );
  }
}
