import 'package:flutter/material.dart';
import 'package:we_deliver/screen/bottom_navigation_bar/bottom_navigation_bar_screen.dart';
import 'package:we_deliver/screen/bottom_navigation_bar/tab_bottom_navigation_bar/home_screen.dart';
import 'package:we_deliver/utilities/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
      ThemeData(
        appBarTheme: AppBarTheme(centerTitle: true, elevation: 0,
          color: Colors.transparent,
          iconTheme: IconThemeData(
            size: 30,
          ),),

      ),

      initialRoute: '/bottom_navigation_bar_screen',

      routes: {
       // '/home_screen': (context) => HomeScreen(),
        '/bottom_navigation_bar_screen': (context) => BottomNavigationBarScreen(),




      },
    );
  }
}

