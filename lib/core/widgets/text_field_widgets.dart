import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';

class TextFieldWidgets extends StatelessWidget {
  const TextFieldWidgets({
    super.key,
    required this.labelText,
    required this.icon,
  });

  final String labelText;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Container(
     decoration:BoxDecoration(
        border: Border.all(color: AppColors.greyColor),
        borderRadius: BorderRadius.circular(30),
     ),
      child: TextField(
       decoration: InputDecoration(
         border: InputBorder.none,
       prefixIcon: Padding(
        padding: const EdgeInsets.all(12),
        child: icon,
      ),
         labelText: labelText,
         labelStyle: TextStyles.style14.copyWith(
           color: AppColors.darkColor,
           fontWeight: FontWeight.w400,
         ),
         
        
       ),
      ),
    );
  }
}