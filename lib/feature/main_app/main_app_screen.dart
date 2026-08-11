import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/constants/image_app.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/feature/basket/screen/basket_screen.dart';
import 'package:fruits_app/feature/favorite_screen/favorite_screen.dart';
import 'package:fruits_app/feature/home/pages/home_screen.dart';
import 'package:fruits_app/feature/more_screen/more_screen.dart';
import 'package:fruits_app/feature/order_screen/screens/order_screen.dart';

class MainAPPScreen extends StatefulWidget {
  const MainAPPScreen({super.key});

  @override
  State<MainAPPScreen> createState() => _MainAPPScreenState();
}

class _MainAPPScreenState extends State<MainAPPScreen> {
  int currentindex = 0;

  List<Widget> screen = [
    HomeScreen(),
    OrderScreen(),
    BasketScreen(),
    FavoriteScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentindex,
        children: screen,
      ),

      bottomNavigationBar: Container(
        color: AppColors.primaryColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: GNav(
          selectedIndex: currentindex,
          onTabChange: (index) {
            setState(() {
              currentindex = index;
            });
          },
          backgroundColor: AppColors.primaryColor,
          color: AppColors.greyColor,
          activeColor: AppColors.primaryColor,
          tabBackgroundColor: AppColors.whiteColor,
          gap: 8,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 12,
          ),

          tabs: [
            GButton(
              icon: Icons.circle,
              leading: SvgPicture.asset(
                ImageApp.homeSvg,
               colorFilter: ColorFilter.mode(
                  currentindex == 0 ? AppColors.primaryColor : AppColors.whiteColor,
                  BlendMode.srcIn,
                ),
                width: 24,
                height: 24,
              ),
              text: 'home',
            ),
            GButton(
              icon: Icons.circle,
              leading: SvgPicture.asset(
                ImageApp.ordersSvg,
                 colorFilter: ColorFilter.mode(
                  currentindex == 1 ? AppColors.primaryColor : AppColors.whiteColor,
                  BlendMode.srcIn,
                ),
                width: 24,
                height: 24,
              ),
              text: 'order',
            ),
            GButton(
              icon: Icons.circle,
              leading: SvgPicture.asset(
                ImageApp.basketSvg,
                colorFilter: ColorFilter.mode(
                  currentindex == 2 ? AppColors.primaryColor :AppColors.whiteColor,
                  BlendMode.srcIn,
                ),
                width: 24,
                height: 24,
              ),
              text: 'basket',
            ),
          GButton(
              icon: Icons.circle,
              leading: SvgPicture.asset(
                ImageApp.favoriteSvg,
                colorFilter: ColorFilter.mode(
                  currentindex == 3 ? AppColors.primaryColor : AppColors.whiteColor,
                  BlendMode.srcIn,
                ),
                width: 24,
                height: 24,
              ),
              text: 'favorite',
            ),
            GButton(
              icon: Icons.circle,
              leading: SvgPicture.asset(
                ImageApp.moreSvg,
                colorFilter: ColorFilter.mode(
                  currentindex == 4 ? AppColors.primaryColor : AppColors.whiteColor,
                  BlendMode.srcIn,
                ),
                width: 24,
                height: 24,
              ),
              text: 'more',
            ),
          ],
        ),
      ),
    );
  }
}