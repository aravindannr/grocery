import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/widgets/carousal.dart';
import '../utils/colorConstant/colors.dart';
import '../widgets/appBar.dart';
import '../widgets/bottomBar.dart';
import '../widgets/categoryTab.dart';
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
            CarouselWidget(),
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
        Container(height: 650, child: ItemsTab()),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "For more",
              style: GoogleFonts.notoSerif(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: yellow
            ),
            ),
            IconButton(onPressed: (){},
                icon: Icon(Icons.arrow_forward,size: 18,
                color: bl,))
          ],
        )

      ]))
    ])),
    bottomNavigationBar: BottomNavBar(),
    );
  }
}
