import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/feature/home/model/slider_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Sliders extends StatefulWidget {
  const Sliders({
    super.key,
  });

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
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
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex=index;
                });
              },
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(seconds: 3),
               initialPage: 1,
                ),
            ),
            const SizedBox(height: 10),

        AnimatedSmoothIndicator(
          activeIndex: currentIndex,
          count: productslider.length,
          effect: const ExpandingDotsEffect(
               activeDotColor: AppColors.primaryColor,
             dotColor: AppColors.greyColor,
             dotHeight: 10,
             dotWidth: 10,
            expansionFactor: 3,
            spacing: 5,


          ),)
      ],
    );
        
  }
}
