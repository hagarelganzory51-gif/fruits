import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';
import 'package:fruits_app/core/widgets/main_button.dart';
import 'package:fruits_app/core/widgets/text_field_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                Center(child: Text("Login to Wikala",style:TextStyles.style24.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.darkColor,
                fontSize: 25,
                ), ),),
                SizedBox(height: 30,),
                 Text("Phone Number  ",style:TextStyles.style14.copyWith(
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

                SizedBox(height: 10,),

                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Column(
                         children: [
                           TextButton(onPressed: (){}, 
                              child: Text('Forget Password?',style: TextStyles.style18.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColors.bluecolor
                              ))),
                               Container(
                              width: 150,
                              height: 2,
                              color: AppColors.bluecolor,
                            ),
                         ],
                       ),
                     ],
                   ),
                 SizedBox(height: 20,),


                SizedBox(
                  width:double.infinity ,height: 60,
                  child: MainButton(onPressed: (){},text: 'Login')),
  
                  SizedBox(height: 35,),
                 Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Text('Don’t have an account?',style: TextStyles.style18.copyWith(
                    fontWeight: FontWeight.w400,
                  )),
                  Column(
                    children: [
                      TextButton(onPressed: (){}, 
                      child: Text('Sign Up',style: TextStyles.style18.copyWith(
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