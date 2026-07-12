import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/image_app.dart';
import 'package:fruits_app/core/function/navigation.dart';
import 'package:fruits_app/feature/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      pushReplacement(context,  OnboardingScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Column( 
        children: [
          Spacer(),
         Center(child: Image.asset(ImageApp.fruit,width: 200,)),
         Spacer(),
           Image.asset(ImageApp.fruit,width:double.infinity,),
        ],
     ),
    );
  }
}