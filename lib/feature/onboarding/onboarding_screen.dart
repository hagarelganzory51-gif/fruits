import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/image_app.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      actions: [
        Column(
          children: [
            TextButton(onPressed: (){},
            child: Text("Skip",
            style: TextStyles.style18.copyWith(fontWeight: FontWeight.w400, color: AppColors.darkColor),)),
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
            child: PageView.builder(itemBuilder: (context,index){
              return Column(
                children: [
                  SizedBox(height: 12,),
                  Image.asset(ImageApp.onboarding,height: 300,width: double.infinity,),
                  SizedBox(height: 20,),
                  Text("E Shopping",style: TextStyles.style24.copyWith(fontWeight: FontWeight.w600),),
                  SizedBox(height: 20,),
                  Text("Explore op organic fruits & grab them",style: TextStyles.style16.copyWith(fontWeight: FontWeight.w400,color: AppColors.darkColor),),
                ],
              );
            },
            itemCount: 3,
            ),
          )
        ]
      )
    );
  }
}