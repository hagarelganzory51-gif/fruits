import 'package:flutter/material.dart';
import 'package:fruits_app/core/function/navigation.dart'; 
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/widgets/main_button.dart';
import 'package:fruits_app/feature/auth/welcome_screen.dart';
import 'package:fruits_app/feature/onboarding/models/ondoading_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart' as smoothpageindicator;

class SmoothPage extends StatelessWidget {
  const SmoothPage({
    super.key,
    required this.pageController,
    required this.currentPage,
  });

  final PageController pageController;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          smoothpageindicator.SmoothPageIndicator(
            controller: pageController,
            count: onboardingData.length, 
            effect: smoothpageindicator.ExpandingDotsEffect(
              activeDotColor: AppColors.primaryColor,
              dotColor: AppColors.primaryColor,
              dotHeight: 10,
              dotWidth: 10,
              spacing: 5,
            ),
          ),
          const SizedBox(height: 40),
          MainButton(
            text: currentPage == onboardingData.length - 1 ? "Get Started" : "Next",
            onPressed: () {
              if (currentPage == onboardingData.length - 1) {
                pushReplacement(context, WelcomeScreen());
              } else {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            },
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}