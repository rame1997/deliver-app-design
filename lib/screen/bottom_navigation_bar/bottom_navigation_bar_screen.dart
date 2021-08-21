

import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:we_deliver/screen/bottom_navigation_bar/tab_bottom_navigation_bar/home_screen.dart';
import 'package:we_deliver/screen/bottom_navigation_bar/tab_bottom_navigation_bar/order_screen.dart';
import 'package:we_deliver/utilities/app_colors.dart';
import 'package:we_deliver/utilities/size_config.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarScreenState createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  PageController _myPage = PageController(initialPage: 0);
  bool keyboardOpen = false;
  late var keyboardVisibilityController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    keyboardVisibilityController = KeyboardVisibilityController();
    keyboardVisibilityController.onChange.listen((bool visible) {
      setState(() => keyboardOpen = visible);
    });
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButton:Container(
        height: SizeConfig.scaleHeight(60),
        width: SizeConfig.scaleWidth(60),
        child:  keyboardOpen
            ? SizedBox()
            :FloatingActionButton(
          backgroundColor: AppColors.ActionBarColor,
          onPressed: (){
            _myPage.jumpToPage(4);
          },
          child: Icon(Icons.add,size: SizeConfig.scaleHeight(38),),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: AppColors.White,
      bottomNavigationBar:BottomAppBar(
        clipBehavior: Clip.antiAlias,
        color:AppColors.White,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.only(left: SizeConfig.scaleWidth(25),top: SizeConfig.scaleHeight(2),bottom: SizeConfig.scaleHeight(2)),
              child: IconButton(icon: Icon(Icons.home_outlined,color: AppColors.IconBottomBarColor,size: SizeConfig.scaleHeight(24),), onPressed: () {
                setState(() {
                  _myPage.jumpToPage(0);
                });
              },),
            ),
            Padding(
              padding:  EdgeInsets.only(right: SizeConfig.scaleWidth(30)),
              child: IconButton(icon: Icon(Icons.account_balance_wallet_outlined,color: AppColors.IconBottomBarColor), onPressed: () {
                setState(() {
                  _myPage.jumpToPage(1);
                });
              },),
            ),
            Padding(
              padding:  EdgeInsets.only(left: SizeConfig.scaleWidth(30)),
              child: IconButton(icon: Icon(Icons.headset_mic_outlined,color: AppColors.IconBottomBarColor), onPressed: () {
                setState(() {
                  _myPage.jumpToPage(2);
                });
              },),
            ),
            Padding(
              padding:  EdgeInsets.only(right: SizeConfig.scaleWidth(25),),
              child: IconButton(icon: Icon(Icons.settings_outlined,color: AppColors.IconBottomBarColor), onPressed: () {
                setState(() {
                  _myPage.jumpToPage(3);
                });
              },),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _myPage,
        onPageChanged: (int) {
          print('Page Changes to index $int');
        },
        children: <Widget>[
          HomeScreen(),
          Center(
            child: Container(
              child: Text('Empty Body 1'),
            ),
          ),
          Center(
            child: Container(
              child: Text('Empty Body 2'),
            ),
          ),
          Center(
            child: Container(
              child: Text('Empty Body 3'),
            ),
          ),
          OrderScreen()
        ],
        physics: NeverScrollableScrollPhysics(), // Comment this if you need to use Swipe.
      ),

    );
  }
}
