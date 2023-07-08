import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/utils/colorConstant/colors.dart';
import 'package:lottie/lottie.dart';

import 'homePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Text(
                    'We deliver groceries at your doorstep',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSerif(
                        fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Fresh items everyday',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 40,),
                Lottie.asset(
                  "assets/logo/79094-blue-shopping-cart.json",
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: 'GRO',
                    style: TextStyle(
                      color: orange,
                      fontFamily: 'poppins',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    children: const [
                      TextSpan(
                        text: 'CERY',
                        style: TextStyle(
                          color: blue,
                          fontFamily: 'poppins',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(green),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
