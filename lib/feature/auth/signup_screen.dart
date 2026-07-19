import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';
import 'package:fruits_app/core/widgets/main_button.dart';
import 'package:fruits_app/core/widgets/text_field_widgets.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                ),
                ),
                ),
                SizedBox(height: 20,),
                Center(child: Text("Sign Up to Wikala",style:TextStyles.style24.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.darkColor,
                fontSize: 25,
                ), ),),
                SizedBox(height: 30,),
                Text("Full name",style:TextStyles.style14.copyWith(
                color: AppColors.greyColor,
                ), ),
                SizedBox(height: 10,),
                TextFieldWidgets(labelText:'First and Last Name' ,),
                 SizedBox(height: 20,),


                 Text("Phone Number with Whatsapp ",style:TextStyles.style14.copyWith(
                color: AppColors.greyColor,
                ), ), 
                SizedBox(height: 10,),
                TextFieldWidgets(labelText:'Mobile Number' ,),
                 SizedBox(height: 20,),


                 Text("password",style:TextStyles.style14.copyWith(
                color: AppColors.greyColor,
                ), ),
                SizedBox(height: 10,),
                TextFieldWidgets(labelText:'Password' ,),

                 SizedBox(height: 40,),
                SizedBox(
                  width:double.infinity ,height: 60,
                  child: MainButton(onPressed: (){},text: 'Sign Up')),

                  SizedBox(height: 40,),
                 Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Text('Already have an account?',style: TextStyles.style18.copyWith(
                    fontWeight: FontWeight.w400,
                  )),
                  Column(
                    children: [
                      TextButton(onPressed: (){}, 
                      child: Text('Login',style: TextStyles.style18.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.bluecolor
                      ))),
                       Container(
                          width: 60,
                          height: 2,
                          color: AppColors.bluecolor,
                        ),
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