import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/constants/image_app.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';
import 'package:fruits_app/core/widgets/sign_google.dart';
import 'package:fruits_app/core/widgets/text_field_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body:Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Center(child: Text("Fruit Market",style:TextStyles.style24.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
              fontSize: 40,
              ),
              ),
              ),
              SizedBox(height: 20,),
              Center(child: Text("Welcome to Our app",style:TextStyles.style24.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.darkColor,
              fontSize: 25,
              ), ),),
               SizedBox(height: 30,),
               TextFieldWidgets(
                labelText: "Sign in with Phone Number",
                icon: SvgPicture.asset(ImageApp.phoneSvg,)
               ),
               SizedBox(height: 40,),
               SignGoogle(
                image:ImageApp.googleSvg,
                text: 'Sign in with Google',
               ),
               SizedBox(height: 20,),
               SignGoogle(
                image:ImageApp.faceSvg,
                text: 'Sign in with Facebook',
                colors1: AppColors.bluecolor,
                colors:AppColors.whiteColor
               ),
               SizedBox(height: 80,),
               Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Text('Already member?',style: TextStyles.style18.copyWith(
                    fontWeight: FontWeight.w400,
                  )),
                  TextButton(onPressed: (){}, 
                  child: Text('Sign In',style: TextStyles.style18.copyWith(
                    fontWeight: FontWeight.w400,
                    
                    color: AppColors.bluecolor
                  ))),
                ],
               ),
                SizedBox(height: 50,),
                        
          ],
        ),
      ),
    );
  }
}
