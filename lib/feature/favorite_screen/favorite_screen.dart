import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/constants/image_app.dart';
import 'package:fruits_app/core/function/navigation.dart' as navigator;
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';
import 'package:fruits_app/feature/main_app/main_app_screen.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, ),
          onPressed: () {
            navigator.pushReplacement(context,MainAPPScreen());
          },
        ),
        title: Text(
          "Favorite",
          textAlign: TextAlign.center,
          style: TextStyles.style24.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
            fontSize: 24,
          ),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: 2,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          return const FavoriteItemCard();
        },
      ),
    );
  }
}

class FavoriteItemCard extends StatelessWidget {
  const FavoriteItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: AppColors.darkColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
          
            CircleAvatar(
  radius: 35,
  backgroundColor: Colors.transparent,
  child: ClipOval(
    child: SvgPicture.asset(
      ImageApp.cartSvg, 
      width: 70,
      height: 70,
      fit: BoxFit.cover,
    ),
  ),
),
            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product name',
                    style: TextStyles.style24.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Text(
                        '12.00 KD',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.greyColor,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '14.00 KD',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.greyColor,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(fontSize: 14, color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Store Name : ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Store 1',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

           
            IconButton(
              icon: const Icon(Icons.close, size: 20, color: AppColors.greyColor),
              onPressed: () {
               
              },
            ),
          ],
        ),
      ),
    );
  }
}