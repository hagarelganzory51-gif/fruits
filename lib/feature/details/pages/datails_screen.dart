import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/constants/image_app.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';

class DatailsScreen extends StatefulWidget {
  const DatailsScreen({super.key});

  @override
  State<DatailsScreen> createState() => _DatailsScreenState();
}

class _DatailsScreenState extends State<DatailsScreen> {
String ?selectedWeight ;
String ?selectedAddons;
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
                   icon: SvgPicture.asset(ImageApp.favoriteSvg,width: 20,
                   colorFilter: const ColorFilter.mode(
                             AppColors.primaryColor, 
                              BlendMode.srcIn,
                        ),
                   ),),
                    IconButton(onPressed: (){},
                   icon: SvgPicture.asset(ImageApp.loadSvg,width: 20,
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
      body:Padding(
        padding: const EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(ImageApp.shop,
                height: 300,width: double.infinity,),
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Category Name',
                style: TextStyles.style16.copyWith(),
                ),
                 Text('Price',
                style: TextStyles.style16.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight:FontWeight.w400 
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Product name',
                style: TextStyles.style22.copyWith(),
                ),
                 Text('KD12.00 ',
                style: TextStyles.style16.copyWith(
                  color: AppColors.darkColor,
                  fontWeight:FontWeight.w400 
                  ),
                ),
              ],
            ),
           
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit\n, sed do eiusmod tempor incididunt ut labore et dolore\n magna aliqua.',
              maxLines: 3, 
             
              style: TextStyles.style14.copyWith(
                  color: AppColors.darkColor,
                  fontWeight:FontWeight.w400 
                  ),
            ),
            SizedBox(height: 10,),
            Text('Sell Per : Kartoon',
              style: TextStyles.style16.copyWith(
                  color: AppColors.darkColor,
                  fontWeight:FontWeight.w400 
                  ),
            ),
            SizedBox(height: 10,),

ExpansionTile(
 
  title: Text(
    'Select weight',
    style: TextStyles.style18.copyWith(
      color: AppColors.darkColor,
      fontWeight: FontWeight.w600,
    ),
  ),
  children: [
    RadioGroup<String>(
      groupValue: selectedWeight,
      onChanged: (value) {
        if (value != null) {
          setState(() {
            selectedWeight = value;
          });
        }
      },
      child: Column(
        children: const [
          RadioListTile<String>(
            title: Text('50 Gram - 4.00 KD'),
            value: '50 Gram - 4.00 KD',
            contentPadding: EdgeInsets.zero,
          ),
          RadioListTile<String>(
            title: Text('1 Kg - 6.25 KD'),
            value: '1 Kg - 6.25 KD',
            contentPadding: EdgeInsets.zero,
          ),
          RadioListTile<String>(
            title: Text('2 Kg - 12.00 KD'),
            value: '2 Kg - 12.00 KD',
            contentPadding: EdgeInsets.zero,
          ),
        ],
      ),
    ),
  ],
),
          SizedBox(height: 10,),

ExpansionTile(
 
  title: Text(
    'Select Addons',
    style: TextStyles.style18.copyWith(
      color: AppColors.darkColor,
      fontWeight: FontWeight.w600,
    ),
  ),
  children: [
    RadioGroup<String>(
      groupValue: selectedAddons,
      onChanged: (value) {
        if (value != null) {
          setState(() {
            selectedAddons = value;
          });
        }
      },
      child: Column(
        children: const [
          RadioListTile<String>(
            title: Text('50 Gram - 4.00 KD'),
            value: '50 Gram - 4.00 KD',
            contentPadding: EdgeInsets.zero,
          ),
          RadioListTile<String>(
            title: Text('1 Kg - 6.25 KD'),
            value: '1 Kg - 6.25 KD',
            contentPadding: EdgeInsets.zero,
          ),
          
        ],
      ),
    ),
  ],
),

              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      
                    },
                    style: ElevatedButton.styleFrom(
                      maximumSize: Size(177, 50),
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: Row(
                      
                      children: [
                          SvgPicture.asset(ImageApp.basketSvg,
                          colorFilter: const ColorFilter.mode(
                               AppColors.whiteColor, 
                                BlendMode.srcIn,
                          ),
                          width: 30,
                          ),
                            SizedBox(width: 10,),
                          Text(
                          'Add to Cart',
                          style: TextStyles.style18.copyWith(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )

       
            ],
              
          ),
          
        ),
      ),
      
    );
  }
}