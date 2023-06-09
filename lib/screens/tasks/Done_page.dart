import 'package:flutter/material.dart';

class DonePage extends StatelessWidget {
  const DonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height*0.03,
        width: double.maxFinite,
    
        child: Text( " Done page",),
      ),
    );
  }
}