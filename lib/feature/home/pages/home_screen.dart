import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/constants/image_app.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';
import 'package:fruits_app/feature/home/widgets/list_view.dart';
import 'package:fruits_app/feature/home/widgets/slider.dart';
import 'package:fruits_app/feature/home/widgets/store_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
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
                bottom:PreferredSize(
                  preferredSize: Size.fromHeight(1.0),
                   child: Container(
                         color: AppColors.greyColor, 
                         height: 1.0,                
                ),) ,
      
      ),
      body: Padding(
       padding: const EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
        child: Column(
          children: [
            Sliders(),
              
            SizedBox(height: 20,),
           ListViewProduct(),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sellers',
              style: TextStyles.style22.copyWith(),
              ),
               Text('Show all',
              style: TextStyles.style22.copyWith(
                color: AppColors.bluecolor,
                fontWeight:FontWeight.w500 
                ),
              ),
        
            ],
          ),
          SizedBox(height: 10,),
         StoreCard(),
        
          ],
        ),
      ),

    );
  }
}
