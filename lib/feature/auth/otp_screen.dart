import 'package:flutter/material.dart';
import 'package:fruits_app/core/function/navigation.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';
import 'package:fruits_app/core/widgets/main_button.dart';
import 'package:fruits_app/feature/main_app/main_app_screen.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("Fruit Market",style:TextStyles.style24.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
                fontSize: 40,
                ) ),),
                SizedBox(height: 20,),
                Center(child: Text("Enter Received OTP",style:TextStyles.style24.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.darkColor,
                fontSize: 25,
                ), ),),
                SizedBox(height: 50,),

                Center(
                  child: Pinput(
                    length: 4,
                    defaultPinTheme: PinTheme(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                         shape: BoxShape.circle,
                        border: Border.all(color: AppColors.greyColor),
                      )
                    ),
                  ),
                ),

               SizedBox(height: 50,),
               
                SizedBox(
                  width:double.infinity ,height: 60,
                  child: MainButton(onPressed: (){
                    pushReplacement(context, MainAPPScreen());
                  },text: 'Confirm')),
                   SizedBox(height: 50,),
                   Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Text('Not received?',style: TextStyles.style18.copyWith(
                    fontWeight: FontWeight.w400,
                  )),
                  
                  Column(
                    children: [
                      TextButton(onPressed: (){}, 
                      child: Text('Send Again',style: TextStyles.style18.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.bluecolor
                      ))),
                      
                    ],
                  ),
                ],
               ),
  
                 
          ],
        ),
      ),
    );
  }
}