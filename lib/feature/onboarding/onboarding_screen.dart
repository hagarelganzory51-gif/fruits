import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/text_styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      actions: [
        TextButton(onPressed: (){},
        child: Text("Skip",style: TextStyles.style18.copyWith(fontWeight: FontWeight.w400),))
      ],
      ),
      body:Column(
        children:[
          Expanded(
            child: PageView.builder(itemBuilder: (context,index){
              
            },
            itemCount: 3,
            ),
          )
        ]
      )
    );
  }
}