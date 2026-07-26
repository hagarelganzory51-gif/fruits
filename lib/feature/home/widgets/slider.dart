import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/feature/home/model/slider_model.dart';

class Sliders extends StatelessWidget {
  const Sliders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
    itemCount: productslider.length,
    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
      Image.asset(productslider[itemIndex].image,
            ),
          options: CarouselOptions(
          height: 200,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 2.0,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(seconds: 3),
           initialPage: 1,
            ),
        );
  }
}
