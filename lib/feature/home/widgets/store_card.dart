import 'package:flutter/material.dart';
import 'package:fruits_app/feature/home/widgets/cart_details.dart';

class StoreCard extends StatelessWidget {
  const StoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        
        scrollDirection: Axis.vertical,
        itemCount: 3,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10,);
        },
        itemBuilder: (BuildContext context, int index) {
          return CartDetails();
        },
      ),
    );
  }
}
