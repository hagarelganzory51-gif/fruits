import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/constants/image_app.dart';
import 'package:fruits_app/core/function/navigation.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';
import 'package:fruits_app/feature/details/pages/datails_screen.dart';

class CartDetails extends StatelessWidget {
  const CartDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       pushTo(context, const DatailsScreen());
      },
      child: SizedBox(
        width: 300,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.whiteColor ,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: AppColors.greyColor,
              width: 1.5,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              CircleAvatar(
                radius: 35,
                child: SvgPicture.asset(
                  ImageApp.cartSvg,
                ),
              ),
        
              const SizedBox(width: 12),
        
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: Text(
                                  'Seller name',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyles.style18.copyWith(
                                    color: AppColors.darkColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 4),
                              SvgPicture.asset(
                              ImageApp.vectorSvg,
                              width: 12,
                            ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '4.5',
                          style: TextStyles.style18.copyWith(
                            color:AppColors.greyColor ,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
        
                    const SizedBox(height: 6),
        
                    Row(
                      children: [
                         SvgPicture.asset(
                              ImageApp.deliverySvg,
                              width: 20,
                            ),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            'Delivery Charges : 0.5 KD',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyles.style18.copyWith(
                              color: AppColors.darkColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
        
                    const SizedBox(height: 8),
        
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.grey,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                'Open',
                                style: TextStyles.style18.copyWith(
                                  color: Colors.green,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.grey,
                              ),
                              const SizedBox(width: 4),
                              Flexible(
                                child: Text(
                                  'Beverages',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyles.style18.copyWith(
                                    color: Colors.teal,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 6),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '2.5 KM',
                              style: TextStyles.style18.copyWith(
                                color: AppColors.darkColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 2),
                            SvgPicture.asset(
                              ImageApp.locationSvg,
                              width: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}