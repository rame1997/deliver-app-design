import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../size_config.dart';

class RowOptionOrder extends StatelessWidget {
  IconData icon;
  String title;

  RowOptionOrder({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.scaleHeight(40),
      width: SizeConfig.scaleWidth(106),
      decoration: BoxDecoration(
          color: AppColors.Contanier_ListTile,
          borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppColors.Button,
            size: SizeConfig.scaleHeight(30),
          ),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'pop',
              fontWeight: FontWeight.w500,
              fontSize: SizeConfig.scaleTextFont(14),
              color: AppColors.Button,
            ),
          )
        ],
      ),
    );
  }
}
