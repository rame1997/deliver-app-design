import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../size_config.dart';

class ColumnOrderDetiles extends StatelessWidget {
  String title;
  String subTitle;

  ColumnOrderDetiles({required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title,style: TextStyle(
          fontFamily: 'pop',
          fontWeight: FontWeight.w700,
          fontSize:SizeConfig.scaleTextFont(16) ,
          color: AppColors.Button,
        ),),
        SizedBox(
          height: SizeConfig.scaleHeight(2),
        ),
        Text(subTitle,style: TextStyle(
          fontFamily: 'pop',
          fontWeight: FontWeight.w400,
          fontSize:SizeConfig.scaleTextFont(12) ,
          color: AppColors.SubSubTitle,
        ),),
      ],
    );
  }
}