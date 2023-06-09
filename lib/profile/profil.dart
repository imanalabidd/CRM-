import 'package:crm/profile/buildappbar.dart';
import 'package:crm/profile/profile_widget.dart';
import 'package:crm/profile/user.dart';
import 'package:flutter/material.dart';

class PorfilePage extends StatefulWidget {
  const PorfilePage({super.key});

  @override
  State<PorfilePage> createState() => _PorfilePageState();
}

class _PorfilePageState extends State<PorfilePage> {
  @override
  Widget build(BuildContext context) {
    final user=UserPreferences.myUser;
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath :user.imagePath,
            onClicked:()async{},
            
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,), 
          Row(
                                children: [
                                   SizedBox(width: MediaQuery.of(context).size.
                                   width*0.06,),
                                  Text('Name',style: TextStyle(
                                     fontFamily: 'Tajawal',
                                     color: Colors.black87,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 20.0)),
                                ],
                              ),
          SizedBox(height: MediaQuery.of(context).size.height*0.005,),
          Row(
                                children: [
                                   SizedBox(width: MediaQuery.of(context).size.
                                   width*0.05,),
                                  Center(
                                    child: Container(
                                                        height: MediaQuery.of(context).size.height*0.06,
                                                        width: MediaQuery.of(context).size.width*0.9,
                                                        child: Opacity(
                                                          opacity: 0.5,
                                                          child: Padding(
                                                            padding:  EdgeInsets.only(top: 16,left: 10),
                                                            child: Text('Sarah Johnson',
                                                            style: TextStyle(
                                         fontFamily: 'Tajawal',
                                         color: Colors.black87,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 18.0)
                                              ),
                                                          ),
                                                        )
                                                      ,
                                                      decoration: BoxDecoration(
                                                 color:Colors.grey.shade100,
                                                        borderRadius: BorderRadius
                                                        .all(Radius.circular(15),
                                                        ),
                                                        border: Border.all(color: Colors.grey.shade300
                                                      ),
                                                  ),
                                                   ),
                                  ),
                                ],
                              ) ,
          SizedBox(height: MediaQuery.of(context).size.height*0.02,), 
          Row(
                                children: [
                                   SizedBox(width: MediaQuery.of(context).size.
                                   width*0.06,),
                                  Text('Phone',style: TextStyle(
                                     fontFamily: 'Tajawal',
                                     color: Colors.black87,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 20.0)),
                                ],
                              ),
          SizedBox(height: MediaQuery.of(context).size.height*0.005,),
          Row(
                                children: [
                                   SizedBox(width: MediaQuery.of(context).size.
                                   width*0.05,),
                                  Container(
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding:  EdgeInsets.only(top: 16,left: 10),
                          child: Text('+234 8110 043 850',
                          style: TextStyle(
                                       fontFamily: 'Tajawal',
                                       color: Colors.black87,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 18.0)
                                            ),
                        ),
                      )
                    ,
                    decoration: BoxDecoration(
               color:Colors.grey.shade100,
                      borderRadius: BorderRadius
                      .all(Radius.circular(15),
                      ),
                      border: Border.all(color: Colors.grey.shade300
                    ),
                ),
                 ),
                                ],
                              ) ,
          SizedBox(height: MediaQuery.of(context).size.height*0.02,), 
          Row(
                                children: [
                                   SizedBox(width: MediaQuery.of(context).size.
                                   width*0.06,),
                                  Text(' Email',style: TextStyle(
                                     fontFamily: 'Tajawal',
                                     color: Colors.black87,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 20.0)),
                                ],
                              ),
          SizedBox(height: MediaQuery.of(context).size.height*0.005,),
          Row(
                                children: [
                                   SizedBox(width: MediaQuery.of(context).size.
                                   width*0.05,),
                                  Container(
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding:  EdgeInsets.only(top: 16,left: 10),
                          child: Text('sarah@gmail.com',
                          style: TextStyle(
                                       fontFamily: 'Tajawal',
                                       color: Colors.black87,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 18.0)
                                            ),
                        ),
                      )
                    ,
                    decoration: BoxDecoration(
               color:Colors.grey.shade100,
                      borderRadius: BorderRadius
                      .all(Radius.circular(15),
                      ),
                      border: Border.all(color: Colors.grey.shade300
                    ),
                ),
                 ),
                                ],
                              ) ,
           SizedBox(height: MediaQuery.of(context).size.height*0.02,), 
          Row(
                                children: [
                                   SizedBox(width: MediaQuery.of(context).size.
                                   width*0.06,),
                                  Text('Bio ',style: TextStyle(
                                     fontFamily: 'Tajawal',
                                     color: Colors.black87,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 20.0)),
                                ],
                              ),
                           SizedBox(height: MediaQuery.of(context).size.height*0.005,),
          Row(
                                children: [
                                   SizedBox(width: MediaQuery.of(context).size.
                                   width*0.05,),
                                  Container(
                      height: MediaQuery.of(context).size.height*0.15,
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding:  EdgeInsets.only(top: 16,left: 10),
                          child: Text('I\'m Sarah Johnson, a passionate software engineer with a love for creating innovative solutions. I specialize in web development and enjoy working with cutting-edge technologies like React and Node.js. When I\'m not coding, you can find me exploring the great outdoors, hiking, and capturing beautiful landscapes with my camera. ',
                          style: TextStyle(
                                       fontFamily: 'Tajawal',
                                       color: Colors.black87,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 18.0)
                                            ),
                        ),
                      )
                    ,
                    decoration: BoxDecoration(
               color:Colors.grey.shade100,
                      borderRadius: BorderRadius
                      .all(Radius.circular(15),
                      ),
                      border: Border.all(color: Colors.grey.shade300
                    ),
                ),
                 ),
                                ],
                              ) ,


        ],
      ),
     
    );
}}