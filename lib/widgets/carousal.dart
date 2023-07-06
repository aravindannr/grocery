import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

class Carousal extends StatefulWidget {
  const Carousal({super.key});

  @override
  State<Carousal> createState() => _CarousalState();
}

class _CarousalState extends State<Carousal> {
  List<dynamic> products = [];
  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
      items: products.map((product) {
        final image = product['image'];
        return Image.network(
          image,
          fit: BoxFit.cover,
        );
      }).toList(),
      options: CarouselOptions(
        height: 150,
        viewportFraction: 1,
        aspectRatio: 10 / 5,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
    );
  }
}
