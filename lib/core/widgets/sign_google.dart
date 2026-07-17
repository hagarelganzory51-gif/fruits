import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';

class SignGoogle extends StatelessWidget {
  const SignGoogle({
    super.key, required this.image, required this.text, this.colors1, this.colors,
  });
  final String image;
  final String text;
  final Color?colors;
  final Color?colors1;
  @override
  Widget build(BuildContext context) {
    return Container(
     height: 60,
     decoration: BoxDecoration(
      color:colors1,
       border: Border.all(color: AppColors.greyColor),
       borderRadius: BorderRadius.circular(30),
     ),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         SvgPicture.asset(
           image,
           width: 24,
           height: 24,
         ),
         const SizedBox(width: 10),
         Text(
           text,
           style: TextStyles.style14.copyWith(color:colors),
         ),
           ],
         ),
       );
  }
}
