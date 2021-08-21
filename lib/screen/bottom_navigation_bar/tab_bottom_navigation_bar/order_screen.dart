import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:we_deliver/utilities/app_colors.dart';
import 'package:we_deliver/utilities/size_config.dart';
import 'package:we_deliver/utilities/widget/button.dart';
import 'package:we_deliver/utilities/widget/list_tile_custom.dart';
import 'package:we_deliver/utilities/widget/row_option_order.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Padding(
        padding: EdgeInsets.only(
            left: SizeConfig.scaleWidth(16),
            right: SizeConfig.scaleWidth(16),
            top: SizeConfig.scaleHeight(50)),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.IconList,
                    size: SizeConfig.scaleHeight(20),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Text('Back',style: TextStyle(
                  fontFamily: 'pop',
                  fontWeight: FontWeight.w400,
                  fontSize:SizeConfig.scaleTextFont(16) ,
                  color: AppColors.SubTitle,
                ),
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.scaleHeight(14),
            ),
            Center(
              child: Padding(
                padding:  EdgeInsets.only( left: SizeConfig.scaleWidth(32),
                  right: SizeConfig.scaleWidth(32),),
                child: Text('Your order has been\n placed sucessfully!',style: TextStyle(
                  fontFamily: 'pop',
                  fontWeight: FontWeight.w800,
                  fontSize:SizeConfig.scaleTextFont(25) ,
                  color: AppColors.Title,
                ),),
              ),
            ),
            SizedBox(
              height: SizeConfig.scaleHeight(24),
            ),
            button(color: AppColors.Button, widget: Column(
              children: [
                Text('Estimated time of arrival',style: TextStyle(
                  fontFamily: 'pop',
                  fontWeight: FontWeight.w400,
                  fontSize:SizeConfig.scaleTextFont(12) ,
                  color: AppColors.TitleOrder,
                ),),
                Text('5 min',style: TextStyle(
                  fontFamily: 'pop',
                  fontWeight: FontWeight.w800,
                  fontSize:SizeConfig.scaleTextFont(32) ,
                  color: AppColors.White,
                ),)
              ],
            )
            , onPressed: () {  }, height: 85,),
            SizedBox(
              height: SizeConfig.scaleHeight(32),
            ),
            ListTileCustom(title: '65 X street, New York', subTitle: 'Pickup address', icon: Icons.home,),
            SizedBox(
              height: SizeConfig.scaleHeight(20),
            ),
            ListTileCustom(title: '12 Y street, New York LongName', subTitle: 'Receiver Address', icon: Icons.flag,),
            SizedBox(
              height: SizeConfig.scaleHeight(35),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: SizeConfig.scaleHeight(70),
                      width: SizeConfig.scaleWidth(70),
                      decoration: BoxDecoration(
                          color: AppColors.Contanier_ListTile,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Image.asset('images/image.png'),
                    ),
                    SizedBox(width: SizeConfig.scaleWidth(10),),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ahmad Surname',style: TextStyle(
                          fontFamily: 'pop',
                          fontWeight: FontWeight.w500,
                          fontSize:SizeConfig.scaleTextFont(16) ,
                          color: AppColors.Title,
                        ),),
                        SizedBox(height: SizeConfig.scaleHeight(3),),
                        Text('Reciever',style: TextStyle(
                          fontFamily: 'pop',
                          fontWeight: FontWeight.w400,
                          fontSize:SizeConfig.scaleTextFont(14) ,
                          color: AppColors.SubTile,
                        ),),
                      ],
                    ),
                  ],
                ),

                Container(
                  height: SizeConfig.scaleHeight(50),
                  width: SizeConfig.scaleWidth(50),
                  decoration: BoxDecoration(
                      color: AppColors.Contanier_ListTile,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Icon(
                    Icons.call ,
                    color:AppColors.IconColor,
                    size: SizeConfig.scaleHeight(30),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.scaleHeight(35),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RowOptionOrder(title: 'Edit', icon: Icons.edit,),
                RowOptionOrder(title: 'Cancel', icon: Icons.block_flipped,),
                RowOptionOrder(title: 'Share', icon: Icons.share,)
              ],
            )
          ],
        ),
      ),
    );
  }
}


