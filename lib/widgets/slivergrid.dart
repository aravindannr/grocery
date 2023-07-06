import 'package:flutter/material.dart';

class Grid_sliver extends StatelessWidget {
  const Grid_sliver({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Image(image: AssetImage("lib/images/cute-avocado-cartoon-icon-illustration-free-vector.jpg",),
              ),
            ),
          );
        },
        childCount: 6,
      ),
    );
  }
}
