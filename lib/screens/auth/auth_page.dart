import 'package:crm/screens/auth/sign_in.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 80,right: 15,left: 15),
        child: Column(
          children: [
            Image(image: AssetImage('assets/images/crmm.png')),
            SizedBox(height: MediaQuery.of(context).size.height*0.06,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.blur_on,color: Colors.teal,size: 35,),
                 SizedBox(width: MediaQuery.of(context).size.
                  width*0.02,),
                Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                    Text('ICRM',style: TextStyle(
                           fontFamily: 'Tajawal',
                           color: Colors.black87,
                           fontWeight: FontWeight.bold,
                           fontSize: 20.0)),
                  ],
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.
                  width*0.03,),
                  Text('Evreything you need is in one \n place',style: TextStyle(
                            fontFamily: 'Tajawal',
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0)),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 SizedBox(width: MediaQuery.of(context).size.
                  width*0.03,),
                 Text('Find your daily neccessities at Brand. the Worlds\n largest fashion e-coomerce has arrived in a \n mobile shop now!',style: TextStyle(
                            fontFamily: 'Tajawal',
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0)),
               ],
             ),

              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
             InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder:(context) => SignInPage() ));
              },
               child: Container(
                height: 50,
                width:MediaQuery.of(context).size.width*0.9,
                child: Padding(
                  padding:  EdgeInsets.only(top:15,left: 160),
                  child: Text('Login',style: TextStyle(
                                fontFamily: 'Tajawal',
                                color: Colors.white,
                          
                                fontSize: 20.0)),
                ),
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                  
                ),
               ),
             ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            

           ],
          
        ),
      ),
    );
  }
}
