import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:we_deliver/utilities/app_colors.dart';
import 'package:we_deliver/utilities/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:we_deliver/utilities/widget/ExpansionTileCustom.dart';
import 'package:we_deliver/utilities/widget/ExpansionTileList.dart';
import 'package:we_deliver/utilities/widget/button.dart';
import 'package:we_deliver/utilities/widget/column_order_detiles.dart';
import 'package:we_deliver/utilities/widget/contanir_text_filed.dart';
import 'dart:math' as math;
import 'package:we_deliver/model/Parcel.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late var _currentPosition;
  late String _currentAddress;

  late TextEditingController location;
  late TextEditingController name;
  late TextEditingController mobileNumber;
  late TextEditingController address;
  late TextEditingController amount;
  late TextEditingController notes;
  late TabController tabControllerParcel;
  late TabController tabControllerPay= TabController(length: 2, vsync: this);
  @override
  void initState() {
    // TODO: implement initState
    // _getCurrentLocation();
    tabControllerPay = TabController(length: 2, vsync: this);
    location = TextEditingController();
    name = TextEditingController();
    mobileNumber = TextEditingController();
    address = TextEditingController();
    amount = TextEditingController();
    notes = TextEditingController();
    tabControllerParcel = TabController(length: 3, vsync: this);
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(
                left: SizeConfig.scaleWidth(16),
                right: SizeConfig.scaleWidth(16),
                top: SizeConfig.scaleHeight(50)),
            child: SingleChildScrollView(
                child: Column(children: [
                Row(
                children: [
                Expanded(
                child: Container(
                    height: SizeConfig.scaleHeight(50),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.ContanirTextFiledColor,
                borderRadius: BorderRadius.circular(
                    SizeConfig.scaleHeight(12)),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: SizeConfig.scaleWidth(13),
                    right: SizeConfig.scaleWidth(13)),
                child: Row(
                  children: [
                    InkWell(
                      child: Icon(
                        Icons.place_outlined,
                        color: AppColors.IconColor,
                        size: SizeConfig.scaleHeight(24),
                      ),
                      onTap: (){},
                    ),
                    SizedBox(
                      width: SizeConfig.scaleWidth(8),
                    ),
                    Expanded(
                      child: TextField(
                          onTap: () {},
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'location',
                          )),
                    ),

                  ],
                ),
              ),
            ),
        ),
                  SizedBox(
                    width: SizeConfig.scaleWidth(15),
                  ),
                  Container(
                      height: SizeConfig.scaleHeight(26),
                      width: SizeConfig.scaleWidth(26),
                      child: new GestureDetector(
                        onTap: () {},
                        child: Stack(
                          children: <Widget>[
                            InkWell(
                              child: FaIcon(
                                FontAwesomeIcons.bell,
                                size: SizeConfig.scaleHeight(26),
                              ),
                              onTap: () {},
                            ),
                            Positioned(
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 1,
                                      right: 5,
                                      child: Container(
                                        height: SizeConfig.scaleHeight(8),
                                        width: SizeConfig.scaleWidth(8),
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                            BorderRadius.circular(5)),
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      )),
      ],
    ),
                 SizedBox(height: SizeConfig.scaleHeight(30),),
                  Align(
                    alignment: Alignment.centerLeft,
                      child:
               Text('Create Order',style: TextStyle(
                 fontFamily: 'pop',
                 fontWeight: FontWeight.w800,
                 fontSize:SizeConfig.scaleTextFont(24) ,
                 color: AppColors.Title,
               ),)),
                  SizedBox(
                    height: SizeConfig.scaleHeight(8),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Receiver Name',style: TextStyle(
                      fontFamily: 'pop',
                      fontWeight: FontWeight.w800,
                      fontSize:SizeConfig.scaleTextFont(14) ,
                      color: AppColors.Title,
                    ),),
                  ),
                  SizedBox(
                    height: SizeConfig.scaleHeight(5),
                  ),
                  ContainerTextFiled(widget: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: name,
                            onTap: () {},
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'jack',
                            )),

                      ),

                    ],
                  ), BackGroundcolor: AppColors.ContanirTextFiledColor, height: SizeConfig.scaleHeight(50),),
                  SizedBox(
                    height: SizeConfig.scaleHeight(15),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Receiver Mobile Number *',style: TextStyle(
                      fontFamily: 'pop',
                      fontWeight: FontWeight.w800,
                      fontSize:SizeConfig.scaleTextFont(14) ,
                      color: AppColors.Title,
                    ),),
                  ),
                  SizedBox(
                    height: SizeConfig.scaleHeight(5),
                  ),
                  ContainerTextFiled(widget: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: mobileNumber,
                            onTap: () {},
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '(555) 000-00-00',
                            )),
                      ),
                          Row(
                            children: [
                              InkWell(
                                child: Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.rotationY(math.pi),
                                  child: FaIcon(
                                    FontAwesomeIcons.addressBook,
                                    size: SizeConfig.scaleHeight(26),
                                    color: AppColors.IconColor,
                                  ),
                                ),
                                onTap: () {},
                              ),
                              SizedBox(
                                width: SizeConfig.scaleWidth(15),
                              ),
                              InkWell(
                                child: Container(
                                  height: SizeConfig.scaleHeight(22),
                                  width: SizeConfig.scaleWidth(22),
                                  decoration: BoxDecoration(
                                    color: AppColors.IconColor,
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.only(left: 0,right: 0,top: 0,bottom: 0),
                                    child: Icon(Icons.add,color: AppColors.White,),
                                  )
                                ),
                                onTap: () {},
                              ),
                            ],
                          )


                    ],
                  ), BackGroundcolor: AppColors.ContanirTextFiledColor, height: SizeConfig.scaleHeight(50),),
                  SizedBox(
                    height: SizeConfig.scaleHeight(15),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Receiver Address *',style: TextStyle(
                      fontFamily: 'pop',
                      fontWeight: FontWeight.w800,
                      fontSize:SizeConfig.scaleTextFont(14) ,
                      color: AppColors.Title,
                    ),),
                  ),
                  SizedBox(
                    height: SizeConfig.scaleHeight(5),
                  ),
                  ContainerTextFiled(widget: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: address,
                            onTap: () {},
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '12 Y street, New York ',
                            )),
                      ),
                          Row(
                            children: [
                              InkWell(
                                child: Icon(
                                  Icons.place,
                                  color: AppColors.IconColor,
                                  size: SizeConfig.scaleWidth(26),
                                ),
                                onTap: (){},
                              ),
                            ],
                          )


                    ],
                  ), BackGroundcolor: AppColors.ContanirTextFiledColor, height: SizeConfig.scaleHeight(50),),
                  SizedBox(
                    height: SizeConfig.scaleHeight(15),
                  ),
                  ExpansionTileCustom(
                    title: Text('Show more options',style: TextStyle(
                    fontFamily: 'pop',
                    fontWeight: FontWeight.w500,
                    fontSize:SizeConfig.scaleTextFont(16) ,
                    color: AppColors.IconColor,

                  ),),
                   iconColor: AppColors.IconColor,
                    children: [
                      SizedBox(
                        height: SizeConfig.scaleHeight(15),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Parcel size',style: TextStyle(
                          fontFamily: 'pop',
                          fontWeight: FontWeight.w700,
                          fontSize:SizeConfig.scaleTextFont(14) ,
                          color: AppColors.Title,
                        ),),
                      ),
                      SizedBox(
                        height: SizeConfig.scaleHeight(10),
                      ),
                      ContainerTextFiled(BackGroundcolor: AppColors.ContanirTextFiledColor, height: 52, widget:TabBar(
                        onTap: (index){

                      },
                        controller: tabControllerParcel,
                        tabs: [
                          Tab(text: 'Small'),
                          Tab(text: 'Medium'),
                          Tab(text: 'Large'),
                        ],
                        unselectedLabelColor: AppColors.IconList,
                        labelColor: AppColors.IconColor,
                        indicator: BoxDecoration(
                          color: AppColors.White,
                          borderRadius: BorderRadius.circular(
                              SizeConfig.scaleHeight(5)),
                        ),
indicatorPadding:EdgeInsets.fromLTRB(0, 5, 0, 5) ,
                      )),
                      SizedBox(
                        height: SizeConfig.scaleHeight(15),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Parcel type',style: TextStyle(
                          fontFamily: 'pop',
                          fontWeight: FontWeight.w700,
                          fontSize:SizeConfig.scaleTextFont(14) ,
                          color: AppColors.Title,
                        ),),
                      ),
                      SizedBox(
                        height: SizeConfig.scaleHeight(10),
                      ),
                      ContainerTextFiled(BackGroundcolor: AppColors.ContanirTextFiledColor, height: 52, 
                          widget:ExpansionTileList(title:Text('Select up to 3 types',style: TextStyle(
                            fontFamily: 'pop',
                            fontWeight: FontWeight.w400,
                            fontSize:SizeConfig.scaleTextFont(14) ,
                            color: AppColors.SubTile,
                          ),
                          ),children: [

                          ],)
                      ),
                      SizedBox(
                        height: SizeConfig.scaleHeight(15),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Who will pay Delivery Cost',style: TextStyle(
                          fontFamily: 'pop',
                          fontWeight: FontWeight.w700,
                          fontSize:SizeConfig.scaleTextFont(14) ,
                          color: AppColors.Title,
                        ),),
                      ),
                      SizedBox(
                        height: SizeConfig.scaleHeight(10),
                      ),
                      ContainerTextFiled(BackGroundcolor: AppColors.ContanirTextFiledColor, height: 52, widget:TabBar(
                        onTap: (index){

                        },
                        controller: tabControllerPay,
                        tabs: [
                          Tab(text: 'Me'),
                          Tab(text: 'Customer'),
                        ],
                        unselectedLabelColor: AppColors.IconList,
                        labelColor: AppColors.IconColor,
                        indicator: BoxDecoration(
                          color: AppColors.White,
                          borderRadius: BorderRadius.circular(
                              SizeConfig.scaleHeight(5)),
                        ),
indicatorPadding:EdgeInsets.fromLTRB(0, 5, 0, 5) ,
                      )),
                      SizedBox(
                        height: SizeConfig.scaleHeight(15),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Cash on delivery amount',style: TextStyle(
                          fontFamily: 'pop',
                          fontWeight: FontWeight.w700,
                          fontSize:SizeConfig.scaleTextFont(14) ,
                          color: AppColors.Title,
                        ),),
                      ),
                      SizedBox(
                        height: SizeConfig.scaleHeight(10),
                      ),
                      ContainerTextFiled(widget: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: amount,
                                onTap: () {},
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '\$3',
                                )),

                          ),

                        ],
                      ), BackGroundcolor: AppColors.ContanirTextFiledColor, height: SizeConfig.scaleHeight(50),),
                      SizedBox(
                        height: SizeConfig.scaleHeight(15),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Notes',style: TextStyle(
                          fontFamily: 'pop',
                          fontWeight: FontWeight.w700,
                          fontSize:SizeConfig.scaleTextFont(14) ,
                          color: AppColors.Title,
                        ),),
                      ),
                      SizedBox(
                        height: SizeConfig.scaleHeight(10),
                      ),
                      ContainerTextFiled(widget: Expanded(
                        child: TextField(
                          controller: notes,
                            onTap: () {},
                            maxLength: 100,
                            maxLines: 3,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Have a good day!',
                            )),

                      ), BackGroundcolor: AppColors.ContanirTextFiledColor, height: SizeConfig.scaleHeight(115),),

                      // ContainerTextFiled(widget: ExpansionTileList(title: Text(parcel,style: TextStyle(
                      //   fontFamily: 'pop',
                      //   fontWeight: FontWeight.w400,
                      //   fontSize:SizeConfig.scaleTextFont(14) ,
                      //   color: AppColors.SubTitle,
                      // ),),children: [
                      //   SizedBox(
                      //     height: SizeConfig.scaleHeight(15),
                      //   ),
                      //
                      // ],), height: SizeConfig.scaleHeight(100), BackGroundcolor: AppColors.ContanirTextFiledColor,)
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.scaleHeight(36),
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text('Your Delivery info',style: TextStyle(
                          fontFamily: 'pop',
                          fontWeight: FontWeight.w600,
                          fontSize:SizeConfig.scaleTextFont(18) ,
                          color: AppColors.Title,
                        ),),
                      ),
                      SizedBox(
                        height: SizeConfig.scaleHeight(10),
                      ),
    ContainerTextFiled(BackGroundcolor: AppColors.ContanirOrderColor, widget:
      Padding(
        padding:  EdgeInsets.only(top: SizeConfig.scaleHeight(17)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ColumnOrderDetiles(title: '30 min', subTitle: 'Delivery time',),
            ColumnOrderDetiles(title: '\$'+'15', subTitle: 'Delivery cost'),
            ColumnOrderDetiles(title: '5 min', subTitle: 'ETA')
          ],
        ),
      ), height: SizeConfig.scaleHeight(81)
      ,),
                      SizedBox(
                        height: SizeConfig.scaleHeight(15),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(bottom: 40),
                        child: button(color: AppColors.Button, widget: Text('Order',style: TextStyle(
                          fontFamily: 'pop',
                          fontWeight: FontWeight.w700,
                          fontSize:SizeConfig.scaleTextFont(17) ,
                          color: AppColors.White,
                        ),), onPressed: () {  }, height: 52,),
                      )

                    ],
                  )
            ]))));
  }
  // _getCurrentLocation() async {
  //
  //  var posiation= await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  //  var lastPosiation=await Geolocator.getLastKnownPosition();
  //  setState(() {
  //    location.text="${lastPosiation.locality}, ${lastPosiation.postalCode}, ${lastPosiation.country}";
  //  });
  // }
}

