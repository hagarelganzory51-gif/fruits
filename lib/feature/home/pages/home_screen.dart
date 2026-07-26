import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/constants/image_app.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';
import 'package:fruits_app/feature/home/widgets/slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: AppColors.whiteColor,
        elevation: 0, 
      scrolledUnderElevation: 0,
      centerTitle: false,
       title: Text("Fruit Market",style:TextStyles.style16.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
                fontSize: 30,
                ) ),
                 actions: [
                  IconButton(onPressed: (){},
                   icon: SvgPicture.asset(ImageApp.searchSvg,width: 20,
                   colorFilter: const ColorFilter.mode(
                             AppColors.primaryColor, 
                              BlendMode.srcIn,
                        ),
                   ),),
                    IconButton(onPressed: (){},
                   icon: SvgPicture.asset(ImageApp.layerSvg,width: 20,
                        colorFilter: const ColorFilter.mode(
                             AppColors.primaryColor, 
                              BlendMode.srcIn,
                        ),
                   ),),
                ],
      
      ),
      body: Column(
        children: [
          Sliders(),
          
        ],
      ),

    );
  }
}