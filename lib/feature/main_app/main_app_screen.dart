import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/constants/image_app.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/feature/basket/basket_screen.dart';
import 'package:fruits_app/feature/home/pages/home_screen.dart';

class MainAPPScreen extends StatefulWidget {
  const MainAPPScreen({super.key});

  @override
  State<MainAPPScreen> createState() => _MainAPPScreenState();
}

class _MainAPPScreenState extends State<MainAPPScreen> {
  int currentindex=0;
  List<Widget>screen=[
      HomeScreen(),
       Container(color: Colors.black,),
        BasketScreen(),
       Container(color: Colors.blue,),
       Container(color: Colors.amber,)

    ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: IndexedStack(
      index:currentindex ,
      children: screen,
    ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex=index;
          });
        },
        type:BottomNavigationBarType.fixed,
        backgroundColor: AppColors.whiteColor,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greyColor,
        items:[
          BottomNavigationBarItem(icon:SvgPicture.asset(ImageApp.homeSvg),label: "Home",),
          BottomNavigationBarItem(icon:SvgPicture.asset(ImageApp.ordersSvg),label: "Orders",),
          BottomNavigationBarItem(icon:SvgPicture.asset(ImageApp.basketSvg),label: "Basket",),
          BottomNavigationBarItem(icon:SvgPicture.asset(ImageApp.favoriteSvg),label: "Favorite",),
          BottomNavigationBarItem(icon:SvgPicture.asset(ImageApp.moreSvg),label: "More",)
      ] ) ,
    );
  }
}
