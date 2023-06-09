import 'package:crm/screens/auth/auth_page.dart';
import 'package:crm/screens/auth/sign_in.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add any initialization or data loading logic here
    // You can use a timer to simulate a delay or fetch data from an API
    Future.delayed(Duration(seconds: 2), () {
      // Navigate to the next screen after the delay
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AuthPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/splash.png', // Replace with your image path
          width: 400, // Adjust the width as needed
          height: 400, // Adjust the height as needed
        ),
      ),
    );
  }
}