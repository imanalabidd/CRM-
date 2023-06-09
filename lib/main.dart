import 'package:crm/route/route_helper.dart';
import 'package:crm/screens/SplashScreen.dart';
import 'package:crm/screens/auth/auth_page.dart';
import 'package:crm/screens/auth/sign_in.dart';
import 'package:crm/screens/home/home.dart';
import 'package:crm/screens/projeects/project_details_page.dart';
import 'package:crm/screens/tasks/task_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: AppColors.mainColor,
        appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black87,
        // Change the path to the actual path of your app icon
        // Change the color to match your app's theme
        // The color can be a plain color or a ColorScheme
        // You can also change the size of the icon
        // using the "size" parameter
        // For example, "size: 32.0"
        // The default value for "size" is 24.0
       
      ),
    ),
  ),

   home: HomePage(),
  
      // initialRoute: RouteHelper.getSplashScreenRoute(),
      // getPages: RouteHelper.routes,
      // defaultTransition: Transition.circularReveal,
    );
  }
}

