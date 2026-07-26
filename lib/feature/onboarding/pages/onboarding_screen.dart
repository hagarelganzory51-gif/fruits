import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/image_app.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';
import 'package:fruits_app/core/widgets/smooth_page.dart';
import 'package:fruits_app/feature/onboarding/models/ondoading_model.dart';

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
          
          SmoothPage(pageController: pageController, currentPage: currentPage),
        ],
      ),
    );
  }
}
