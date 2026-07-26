import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/feature/home/model/category_model.dart';

class ListViewProduct extends StatelessWidget {
  const ListViewProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        shrinkWrap: true,
      scrollDirection: Axis.horizontal,
        itemBuilder:(context,index) => 
      Column(
        children: [
          Container(
            width: 60,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
       
      ),
            child:SvgPicture.asset(categoryList[index].image,
            height: 70,
            width: 70,),
          ),
       
        ],
      ),
      
       separatorBuilder: (context, index) => SizedBox(width: 20,),
       
        itemCount:categoryList.length,),
    );
  }
}
