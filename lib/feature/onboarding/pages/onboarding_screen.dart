import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/image_app.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';
import 'package:fruits_app/core/widgets/main_button.dart';
import 'package:fruits_app/feature/onboarding/models/ondoading_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart' as smoothpageindicator;

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  var pageController = PageController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: 
      AppBar(
      actions: [
        if(currentPage != onboardingData.length - 1)
        Column(
          children: [
            TextButton(onPressed: (){},
            child: Text("Skip",
            style: TextStyles.style18.copyWith(
            fontWeight: FontWeight.w400, color: AppColors.darkColor),)),
          Container(
          width: 35,
          height: 2,
          color: AppColors.darkColor,
        ),
          ],
        ),
      ],
      ),
      
      body:Column(
        children:[
          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value){
                setState(() {
                  currentPage = value;
                });
              },
              itemBuilder: (context,index){
              return Column(
                children: [
                  SizedBox(height: 12,),
                  Image.asset(ImageApp.onboarding,height: 300,width: double.infinity,),
                  SizedBox(height: 20,),
                  Text(onboardingData[index].title,
                  style: TextStyles.style24.copyWith(fontWeight: FontWeight.w600),),
                  SizedBox(height: 20,),
                  Text(onboardingData[index].description,
                  style: TextStyles.style16.copyWith(
                  fontWeight: FontWeight.w400,color: AppColors.darkColor),),
                  const SizedBox(height: 20),
                ],
              );
            },
            itemCount: onboardingData.length,
            ),
          ),
          
          SafeArea(
            child: Column(
              children:[
                smoothpageindicator.SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: smoothpageindicator.ExpandingDotsEffect(
                    activeDotColor: AppColors.primaryColor,
                    dotColor: AppColors.primaryColor,
                    dotHeight: 10,
                    dotWidth: 10,
                    spacing: 5,
                  ),
                ),
             SizedBox(height: 40),
              MainButton(
                text:currentPage == onboardingData.length - 1 ? "Get Started" : "Next",
                onPressed: (){

                },
              ),
              
              SizedBox(height: 100),
              ]
            ),
          ),
        ],
      ),
    );
  }
}
