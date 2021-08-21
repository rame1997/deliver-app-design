
import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../size_config.dart';

class button extends StatelessWidget {
  Widget widget;
  Function() onPressed;
  Color color;
double height;
  button({required this.widget, required this.onPressed,required this.color,required this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child:widget,
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            primary: color,
            minimumSize: Size(double.infinity, height)));
  }
}
