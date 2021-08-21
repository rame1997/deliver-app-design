import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../size_config.dart';

class ContainerTextFiled extends StatelessWidget {
Widget widget;
Color BackGroundcolor;
double height;
ContainerTextFiled({required this.widget,required this.BackGroundcolor,required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: BackGroundcolor,
        borderRadius: BorderRadius.circular(
            SizeConfig.scaleHeight(12)),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: SizeConfig.scaleWidth(13),
            right: SizeConfig.scaleWidth(13)),
        child: widget,
      ),
    );
  }
}
