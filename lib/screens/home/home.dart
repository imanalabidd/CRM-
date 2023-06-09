import 'package:crm/components/colors.dart';
import 'package:crm/profile/profil.dart';
import 'package:crm/screens/home/home_widgets/navigation_drawer_widget.dart';
import 'package:crm/screens/projeects/projects_page.dart';
import 'package:crm/uitls/app_dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../route/route_helper.dart';
import '../../widgets/project_overview.dart';
import 'home_widgets/listviewe_widget.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKEY=  GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKEY,
      drawer: NavigationDrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(children:[
                //dashboard
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                      children: [
                        SizedBox(height:MediaQuery.of(context).size.height*0.13,),
                        IconButton(
                          icon: Icon(Icons.menu_outlined),
                          onPressed: ()=>_scaffoldKEY.currentState?.openDrawer(), ),
                        Text("Dashboard",style: TextStyle(color: Colors.black87,fontSize: 20),),
                        Spacer(),
                       
                        Icon(Icons.add_alert_outlined,color: Colors.black87,),
                        SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                        InkWell(
                          onTap: () {
                             Navigator.of(context).push(MaterialPageRoute(builder:(context) => PorfilePage() ));
                          },
                          child: Icon(Icons.person,color: Colors.black87,)),
                        SizedBox(width: MediaQuery.of(context).size.width*0.04,),

                      ]
                  ),
                ),
              ]
              ),
            ),
            Stack(
                children:[
                  Column(
                    children: [
                       //projects overview
                      ProjectOverView(),
                       SizedBox(height:MediaQuery.of(context).size.height*0.035,), 
                                           
                      //Income Overview
                             Container(
                        height: MediaQuery.of(context).size.height*0.4,
                        width:  MediaQuery.of(context).size.width*0.95,

                        child: Column(

                          children: [
                            Row(
                                children: [
                                  SizedBox(height:MediaQuery.of(context).size.height*0.07 ,),
                                  SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                  Icon(Icons.people_outline,color: Colors.green,size: 24,),
                                  SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                  Text("Income Overview",style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),),


                                ]
                            ), SizedBox(height:MediaQuery.of(context).size.height*0.02 ,),
                            Row(
                              children: [

                                SizedBox(width:MediaQuery.of(context).size.width*0.02,),
                                Container(
                                  height:MediaQuery.of(context).size.height*0.015,
                                  width:MediaQuery.of(context).size.width*0.03,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                SizedBox(width:MediaQuery.of(context).size.width*0.02 ,),
                                Text("overdue",style: TextStyle(color: Colors.black54,fontSize: 16),),
                                Spacer(),
                                Container(
                                  height: MediaQuery.of(context).size.height*0.03,
                                  width: MediaQuery.of(context).size.width*0.3,

                                  padding: EdgeInsets.all(0),
                                  child: Padding(
                                    padding: EdgeInsets.only(right:0,left: 0),
                                    child: new LinearPercentIndicator(
                                      width: MediaQuery.of(context).size.width - 300,
                                      animation: true,
                                      lineHeight: 10.0,
                                      animationDuration: 5000,
                                      percent: 0.5,
                                      barRadius: const Radius.circular(16),
                                      progressColor: Colors.red.shade300,
                                      backgroundColor:Colors.grey.shade200 ,
                                    ),
                                  ),

                                ),
                                Text("2",style: TextStyle(color: Colors.black54,fontSize: 14),),
                                SizedBox(width:MediaQuery.of(context).size.width*0.02 ,),
                                Text("\$5,100.00  ",style: TextStyle(color: Colors.black54,fontSize: 14),
                               
                                
                                )  ],
                            ),
                            SizedBox(height:MediaQuery.of(context).size.height*0.02  ,),
                            Row(
                              children: [

                                SizedBox(width:MediaQuery.of(context).size.width*0.02,),
                                Container(
                                  height:MediaQuery.of(context).size.height*0.015,
                                  width:MediaQuery.of(context).size.width*0.03,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow[700],
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                SizedBox(width:MediaQuery.of(context).size.width*0.02 ,),
                                Text("Not paid",style: TextStyle(color: Colors.black54,fontSize: 16),),
                                Spacer(),
                                Container(
                                  height: MediaQuery.of(context).size.height*0.03,
                                  width: MediaQuery.of(context).size.width*0.3,

                                  padding: EdgeInsets.all(0),
                                  child: Padding(
                                    padding: EdgeInsets.only(right:0,left: 0),
                                    child: new LinearPercentIndicator(
                                      width: MediaQuery.of(context).size.width - 300,
                                      animation: true,
                                      lineHeight: 10.0,
                                      animationDuration: 5000,
                                      percent: 0.5,
                                      barRadius: const Radius.circular(16),
                                      progressColor: Colors.red.shade300,
                                      backgroundColor:Colors.grey.shade200  ,
                                    ),
                                  ),

                                ),
                                Text("2",style: TextStyle(color: Colors.black54,fontSize: 14),),
                                SizedBox(width:MediaQuery.of(context).size.width*0.02 ,),
                                Text("\$5,100.00  ",style: TextStyle(color: Colors.black54,fontSize: 14),


                              ) ],
                            ),
                            SizedBox(height:MediaQuery.of(context).size.height*0.02  ,),
                            Row(
                              children: [

                                SizedBox(width:MediaQuery.of(context).size.width*0.02,),
                                Container(
                                  height:MediaQuery.of(context).size.height*0.015,
                                  width:MediaQuery.of(context).size.width*0.03,
                                  decoration: BoxDecoration(
                                    color: Colors.teal[400],
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                SizedBox(width:10 ,),
                                Text("Partially paid",style: TextStyle(color: Colors.black54,fontSize: 16),),
                                Spacer(),
                                Container(
                                height: MediaQuery.of(context).size.height*0.03,
                                width: MediaQuery.of(context).size.width*0.3,

                                padding: EdgeInsets.all(0),
                                child: Padding(
                                padding: EdgeInsets.only(right:0,left: 0),
                                child: new LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width - 300,
                                animation: true,
                                lineHeight: 10.0,
                                animationDuration: 5000,
                                percent: 0.5,
                                barRadius: const Radius.circular(16),
                                progressColor: Colors.red.shade300,
                                backgroundColor:Colors.grey.shade200,
                                ),
                                ),

                                ),
                                Text("2",style: TextStyle(color: Colors.black54,fontSize: 14),),
                                SizedBox(width:MediaQuery.of(context).size.width*0.02 ,),
                                Text("\$5,100.00  ",style: TextStyle(color: Colors.black54,fontSize: 14,),


                                )],
                            ),
                            SizedBox(height:MediaQuery.of(context).size.height*0.02  ,),
                            Row(
                              children: [

                                SizedBox(width:MediaQuery.of(context).size.width*0.02,),
                                Container(
                                  height:MediaQuery.of(context).size.height*0.015,
                                  width:MediaQuery.of(context).size.width*0.03,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                SizedBox(width:MediaQuery.of(context).size.width*0.02 ,),
                                Text("Fully paid",style: TextStyle(color: Colors.black54,fontSize: 16),),
                                SizedBox(width:MediaQuery.of(context).size.width*0.02 ,),
                                Spacer(),
                                Container(
                                  height: MediaQuery.of(context).size.height*0.03,
                                  width: MediaQuery.of(context).size.width*0.3,

                                  padding: EdgeInsets.all(0),
                                  child: Padding(
                                    padding: EdgeInsets.only(right:0,left: 0),
                                    child: new LinearPercentIndicator(
                                      width: MediaQuery.of(context).size.width - 300,
                                      animation: true,
                                      lineHeight: 10.0,
                                      animationDuration: 5000,
                                      percent: 0.5,
                                      barRadius: const Radius.circular(16),
                                      progressColor: Colors.red.shade300,
                                      backgroundColor:Colors.grey.shade200 ,
                                    ),
                                  ),

                                ),
                                Text("2",style: TextStyle(color: Colors.black54,fontSize: 14),),
                                SizedBox(width:MediaQuery.of(context).size.width*0.02 ,),
                                Text("\$5,100.00  ",style: TextStyle(color: Colors.black54,fontSize: 14,),


                                )


                                    ],
                                  ),
                            SizedBox(height:MediaQuery.of(context).size.height*0.02  ,),
                            Row(
                              children: [

                                SizedBox(width:MediaQuery.of(context).size.width*0.02,),
                                Container(
                                  height:MediaQuery.of(context).size.height*0.015,
                                  width:MediaQuery.of(context).size.width*0.03,
                                  decoration: BoxDecoration(
                                    color: Colors.black87,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                SizedBox(width:MediaQuery.of(context).size.width*0.02 ,),
                                Text("Draft  ",style: TextStyle(color: Colors.black54,fontSize: 16),),
                                Spacer(),
                                Container(
                                  height: MediaQuery.of(context).size.height*0.03,
                                  width: MediaQuery.of(context).size.width*0.3,

                                  padding: EdgeInsets.all(0),
                                  child: Padding(
                                    padding: EdgeInsets.only(right:0,left: 0),
                                    child: new LinearPercentIndicator(
                                      width: MediaQuery.of(context).size.width - 300,
                                      animation: true,
                                      lineHeight: 10.0,
                                      animationDuration: 5000,
                                      percent: 0.5,
                                      barRadius: const Radius.circular(16),
                                      progressColor: Colors.red.shade300,
                                      backgroundColor:Colors.grey.shade200 ,
                                    ),
                                  ),

                                ),
                                Text("2",style: TextStyle(color: Colors.black54,fontSize: 14),),
                                SizedBox(width:MediaQuery.of(context).size.width*0.02,),
                                Text("\$5,100.00  ",style: TextStyle(color: Colors.black54,fontSize: 14,),


                                ),

                              ],
                            ),
                            SizedBox(height:MediaQuery.of(context).size.height*0.03  ,),
                            Center(
                              child:Text("Total invoiced :       \$5.100.00" ,style: TextStyle(color: Colors.grey[600],fontSize: 18,fontWeight:FontWeight.bold),) ,
                            )
                                ],
                              ),
                                decoration: BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          spreadRadius: 5,
                                          offset: Offset(1, 1),
                                          color:Colors.grey.withOpacity(0.1)
                                      )
                                    ]
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                              //Income vs Expenses
                              Container(
                                height: MediaQuery.of(context).size.height*0.4,
                                width: MediaQuery.of(context).size.width*0.95,

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(

                                        children: [
                                          SizedBox(height:MediaQuery.of(context).size.height*0.07 ,),
                                          SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                          Icon(Icons.people_outline,color: Colors.green,size: 24,),
                                          SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                          Text("Income vs Expenses",style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),),
                                        ]
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.03 ,),
                                    Container(
                                      child:  new CircularPercentIndicator(
                                        radius: 65.0,
                                        animation: true,
                                        animationDuration: 1200,
                                        lineWidth: 12.0,
                                        percent: 0.7,
                                        circularStrokeCap: CircularStrokeCap.round,
                                        backgroundColor: Colors.yellow.shade100,
                                        progressColor: Colors.red,
                                      ),

                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.012 ,),
                                    Row(
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                          
                                            Row(
                                              children: [
                                                 SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                                Text("Last Year ",style: TextStyle(fontSize: 16,color: Colors.black54,fontWeight: FontWeight.bold),),
                                              ],
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.01 ,),
                                           Row(
                                             children: [
                                               SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                               Container(
                                                 height:MediaQuery.of(context).size.height*0.015,
                                                 width:MediaQuery.of(context).size.width*0.03,
                                                 decoration: BoxDecoration(
                                                   color: Colors.red,
                                                   borderRadius: BorderRadius.circular(15),
                                                 ),
                                               ),
                                               SizedBox(width: MediaQuery.of(context).size.width*0.03 ,),
                                              Text("\$100,000.00",style: TextStyle(color: Colors.black54,fontSize: 14,),)
                                                                             ],
                                           ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.01 ,),
                                           Row(
                                              children: [
                                                SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                                Container(
                                                  height:MediaQuery.of(context).size.height*0.015,
                                                  width:MediaQuery.of(context).size.width*0.03,
                                                  decoration: BoxDecoration(
                                                    color: Colors.yellow.shade800,
                                                    borderRadius: BorderRadius.circular(15),
                                                  ),
                                                ),
                                                SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                              Text("\$600,000.00",style: TextStyle(color: Colors.black54,fontSize: 14,),)
                                                                             ],
                                           ),


                                          ],
                                        ),
                                         Spacer(),
                                         Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            
                                            Row(
                                              children: [
                                                 SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                                Text("This Year ",style: TextStyle(fontSize: 16,color: Colors.black54,fontWeight: FontWeight.bold),),
                                              ],
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.01 ,),
                                           Row(
                                             children: [
                                               SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                               Container(
                                                 height:MediaQuery.of(context).size.height*0.015,
                                                 width:MediaQuery.of(context).size.width*0.03,
                                                 decoration: BoxDecoration(
                                                   color: Colors.red,
                                                   borderRadius: BorderRadius.circular(15),
                                                 ),
                                               ),
                                               SizedBox(width: MediaQuery.of(context).size.width*0.03 ,),
                                              Text("\$100,000.00",style: TextStyle(color: Colors.black54,fontSize: 14,),)
                                                                             ],
                                           ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.01 ,),
                                           Row(
                                              children: [
                                                SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                                Container(
                                                  height:MediaQuery.of(context).size.height*0.015,
                                                  width:MediaQuery.of(context).size.width*0.03,
                                                  decoration: BoxDecoration(
                                                    color: Colors.yellow.shade800,
                                                    borderRadius: BorderRadius.circular(15),
                                                  ),
                                                ),
                                                SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                              Text("\$600,000.00",style: TextStyle(color: Colors.black54,fontSize: 14,),)
                                                                             ],
                                           ),


                                          ],
                                        ),
                                           SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                      ],
                                    ),


                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          spreadRadius: 5,
                                          offset: Offset(1, 1),
                                          color:Colors.grey.withOpacity(0.1)
                                      )
                                    ]
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                              //All Tasks Overview
                              Container(
                                height: MediaQuery.of(context).size.height*0.38,
                                width: MediaQuery.of(context).size.width*0.95,

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(

                                        children: [
                                          SizedBox(height:MediaQuery.of(context).size.height*0.07,),
                                          SizedBox(width:MediaQuery.of(context).size.width*0.06 ,),
                                          Icon(Icons.people_outline,color: Colors.green,size: 24,),
                                          SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                          Text("All Tasks Overview",style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),),
                                        ]
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.03 ,),
                                    Container(
                                      child:  new CircularPercentIndicator(
                                        radius: 60.0,
                                        animation: true,
                                        animationDuration: 1200,
                                        lineWidth: 12.0,
                                        percent: 0.5,
                                        circularStrokeCap: CircularStrokeCap.round,
                                        backgroundColor: Colors.grey.shade100,
                                        progressColor: Colors.blue,
                                      ),

                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.02 ,),
                                    Padding(
                                      padding:  EdgeInsets.only(right:230),
                                      child: Column(
                                        children: [
                                          Padding(padding: EdgeInsets.only(right: 150)),
                                          Row(
                                            children: [
                                              SizedBox(width: MediaQuery.of(context).size.width*0.03 ,),
                                              Container(
                                                height:MediaQuery.of(context).size.height*0.015,
                                                width:MediaQuery.of(context).size.width*0.03,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                              ),
                                              SizedBox(width:MediaQuery.of(context).size.width*0.02 ,),
                                              Text("In Progress",style: TextStyle(color: Colors.black54,fontSize: 14,),)
                                            ],
                                          ),
                                           SizedBox(height: MediaQuery.of(context).size.height*0.01 ,),
                                            Row(
                                            children: [
                                              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                                              Container(
                                                height:MediaQuery.of(context).size.height*0.015,
                                                width:MediaQuery.of(context).size.width*0.03,
                                                decoration: BoxDecoration(
                                                  color: Colors.teal.shade400,
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                              ),
                                              SizedBox(width:MediaQuery.of(context).size.width*0.02 ,),
                                              Text("To Do ",style: TextStyle(color: Colors.black54,fontSize: 14,),)
                                            ],
                                          ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.01 ,),
                                            Row(
                                            children: [
                                              SizedBox(width: MediaQuery.of(context).size.width*0.03 ,),
                                              Container(
                                                height:MediaQuery.of(context).size.height*0.015,
                                                width:MediaQuery.of(context).size.width*0.03,
                                                decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                              ),
                                              SizedBox(width:MediaQuery.of(context).size.width*0.02 ,),
                                              Text("Done ",style: TextStyle(color: Colors.black54,fontSize: 14,),)
                                            ],
                                          ),
                               SizedBox(width:MediaQuery.of(context).size.width*0.01 ,),
                                        ],
                                      ),
                                    ),



                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          spreadRadius: 5,
                                          offset: Offset(1, 1),
                                          color:Colors.grey.withOpacity(0.1)
                                      )
                                    ]
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                              //Team Members Overview
                              Container(
                                height: MediaQuery.of(context).size.height*0.32,
                                width: MediaQuery.of(context).size.width*0.95,
                                child: Padding(
                                  padding:  EdgeInsets.all(5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(

                                          children: [
                                            SizedBox(height:MediaQuery.of(context).size.height*0.07,),
                                            SizedBox(width:MediaQuery.of(context).size.width*0.06 ,),
                                            Icon(Icons.people_outline,color: Colors.green,size: 24,),
                                            SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                            Text("Team Members Overview",style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),),
                                          ]
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.02 ,),
                                      Row(
                                        children: [
                                          SizedBox(width:MediaQuery.of(context).size.width*0.06 ,),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                              Text("5",style: TextStyle(fontSize: 18,color: Colors.black54,fontWeight: FontWeight.w400),),
                                              SizedBox(height: MediaQuery.of(context).size.height*0.02 ,),
                                              Text("Team Members",style: TextStyle(fontSize: 16,color: Colors.black54,),),

                                            ],
                                          ),
                                          Spacer(),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                              Text("0",style: TextStyle(fontSize: 18,color: Colors.yellow.shade700,fontWeight: FontWeight.w600),),
                                              SizedBox(height:MediaQuery.of(context).size.height*0.02 ,),
                                              Text("on leave  today",style: TextStyle(fontSize: 16,color: Colors.black54,),),

                                            ],
                                          ),
                                           SizedBox(width:MediaQuery.of(context).size.width*0.1 ,),

                                        ],
                                      ),
                                      SizedBox(height:MediaQuery.of(context).size.height*0.03 ,),
                                      Row(
                                        

                                        children: [
                                         SizedBox(width:MediaQuery.of(context).size.width*0.02 ,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                               SizedBox(width:MediaQuery.of(context).size.width*0.01 ,),
                                              Text("2",style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.w400),),
                                              SizedBox(height:MediaQuery.of(context).size.height*0.01 ,),
                                              Row(
                                                children: [
                                                  SizedBox(width:MediaQuery.of(context).size.width*0.06 ,),
                                                  Container(
                                                    height:MediaQuery.of(context).size.height*0.025 ,
                                                    width: MediaQuery.of(context).size.width*0.25,

                                                    padding: EdgeInsets.all(2),
                                                    child: new LinearPercentIndicator(
                                                      width: MediaQuery.of(context).size.width *0.2,
                                                      animation: true,
                                                      lineHeight: 10.0,
                                                      animationDuration: 5000,
                                                      percent: 0.7,
                                                      barRadius:  Radius.circular(15),
                                                      progressColor: Colors.red.shade300,
                                                      backgroundColor:Colors.grey.shade200 ,
                                                    ),

                                                  ),
                                                ],
                                              ),
                                              SizedBox(height:MediaQuery.of(context).size.height*0.02 ,),
                                              Text(" Members Cloked In",style: TextStyle(fontSize: 16,color: Colors.black54,),),


                                            ],
                                          ),
                                         Spacer(),
                                          Column(
                                            children: [
                                              Text("3",style: TextStyle(fontSize: 16,color: Colors.teal.shade400,fontWeight: FontWeight.w400),),
                                              SizedBox(height:MediaQuery.of(context).size.height*0.01 ,),
                                              SizedBox(width:MediaQuery.of(context).size.width*0.09 ,),
                                              Row(
                                                children: [
                                                  SizedBox(width:MediaQuery.of(context).size.width*0.08 ,),
                                                  Container(
                                                    height:MediaQuery.of(context).size.height*0.025 ,
                                                    width: MediaQuery.of(context).size.width*0.25,

                                                    padding: EdgeInsets.all(0),
                                                    child: Padding(
                                                      padding: EdgeInsets.only(right:0,left: 0),
                                                      child: new LinearPercentIndicator(
                                                        width: MediaQuery.of(context).size.width *0.2,
                                                        animation: true,
                                                        lineHeight: 10.0,
                                                        animationDuration: 5000,
                                                        percent: 0.7,
                                                      barRadius:const Radius.circular(15),
                                                        progressColor: Colors.teal.shade400,
                                                        backgroundColor:Colors.grey.shade200 ,
                                                      ),
                                                    ),

                                                  ),
                                                ],
                                              ),
                                              SizedBox(height:MediaQuery.of(context).size.height*0.02 ,),
                                              Text(" Members Cloked Out",style: TextStyle(fontSize: 16,color: Colors.black54,),),


                                            ],
                                          ),
                                           SizedBox(width:MediaQuery.of(context).size.width*0.04 ,),
                                        ],
                                      )




                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color:Colors.white,

                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          spreadRadius: 5,
                                          offset: Offset(1, 1),
                                          color:Colors.grey.withOpacity(0.1)
                                      )
                                    ]
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                            Column(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.06,
                                  width: MediaQuery.of(context).size.width*0.95,
                                    child: Row(
                                        children: [
                                          SizedBox(height:MediaQuery.of(context).size.height*0.07,),
                                          SizedBox(width:MediaQuery.of(context).size.width*0.06 ,),
                                          Icon(Icons.people_outline,color: Colors.green,size: 24,),
                                          SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                          Text("All Tasks Overview",style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),),
                                        ]
                                ),
                                  decoration: BoxDecoration(
                                      color:Colors.white,
                                      borderRadius: BorderRadius.only(topLeft:  Radius.circular(15),topRight:  Radius.circular(15)),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 10,
                                            spreadRadius: 5,
                                            offset: Offset(1, 1),
                                            color:Colors.grey.withOpacity(0.1)
                                        )
                                      ]
                                  ),

                                ),
                                ListViewWidget(),


                              ],
                            ),

  SizedBox(height:MediaQuery.of(context).size.height*0.04,),

                    ],
                  ),

                ]
            ),
          ],
        ),
      ),


    );




  }
}
