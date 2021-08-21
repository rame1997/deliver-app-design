import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../size_config.dart';

class ListTileCustom extends StatelessWidget {
IconData icon;
String title;
String subTitle;


ListTileCustom({required this.icon, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Container(
          height: SizeConfig.scaleHeight(50),
          width: SizeConfig.scaleWidth(50),
          decoration: BoxDecoration(
            color: AppColors.Contanier_ListTile,
              borderRadius: BorderRadius.circular(5)
          ),
          child: Icon(
              icon ,
            color:AppColors.IconColor,
            size: SizeConfig.scaleHeight(30),
          ),
        ),
        SizedBox(width: SizeConfig.scaleWidth(10),),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
    Text(title,style: TextStyle(
        fontFamily: 'pop',
        fontWeight: FontWeight.w500,
        fontSize:SizeConfig.scaleTextFont(16) ,
        color: AppColors.Title,
      ),)
      ,
            SizedBox(height: SizeConfig.scaleHeight(3),),
       Text(subTitle,style: TextStyle(
        fontFamily: 'pop',
        fontWeight: FontWeight.w400,
        fontSize:SizeConfig.scaleTextFont(14) ,
        color: AppColors.SubTile,
      ),),
          ],
        )
      ],
    );
  }
}
