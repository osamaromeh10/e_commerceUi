
import 'package:ecommerce_ui/tabs/home_Screen.dart';
import 'package:ecommerce_ui/tabs/intro_Screen.dart';
import 'package:ecommerce_ui/tabs/login_Screenbasic.dart';
import 'package:ecommerce_ui/tabs/card_Shooping_Screen.dart';
import 'package:ecommerce_ui/tabs/fav_Screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: "favscreen",
            routes: {
              IntroScreen.routeName: (context) => IntroScreen(),
              Login.routeName: (context) => Login(),
              HomeScreen.routeName: (context) => HomeScreen(),
              FavScreen.routeName: (context) => FavScreen(),
              cardShoopingScreen.routeName: (context) => cardShoopingScreen(),
            },
          );
        });
  }
}
