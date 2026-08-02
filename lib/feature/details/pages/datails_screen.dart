import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/constants/image_app.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';

class DatailsScreen extends StatelessWidget {
  const DatailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0, 
      scrolledUnderElevation: 0,
      centerTitle: false,
       leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text("Product Name",style:TextStyles.style24.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                  fontSize:24,
                  ) ),
        ),
                actions: [
                  IconButton(onPressed: (){},
                   icon: SvgPicture.asset(ImageApp.favoriteSvg,width: 30,
                   colorFilter: const ColorFilter.mode(
                             AppColors.primaryColor, 
                              BlendMode.srcIn,
                        ),
                   ),),
                    IconButton(onPressed: (){},
                   icon: SvgPicture.asset(ImageApp.loadSvg,width: 30,
                        colorFilter: const ColorFilter.mode(
                             AppColors.primaryColor, 
                              BlendMode.srcIn,
                        ),
                   ),),
                ],
                bottom:PreferredSize(
                  preferredSize: Size.fromHeight(1.0),
                   child: Container(
                         color: AppColors.greyColor, 
                         height: 1.0,                
                ),) ,
      ),
      body:Column(
        children:[]
      )
    );
  }
}