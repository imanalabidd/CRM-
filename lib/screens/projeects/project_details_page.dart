import 'dart:convert';

import 'package:crm/models/project_details.dart';
import 'package:crm/screens/projeects/projects_page.dart';
import 'package:crm/screens/projeects/projects_widgets/tabbar_widget_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:http/http.dart' as http;
import '../../models/base_url.dart';
import '../../models/task.dart';
import '../../route/route_helper.dart';                                             

class ProjectdetailsPage extends StatefulWidget {
  @override
  State<ProjectdetailsPage> createState() => _ProjectdetailsPageState();
}
class _ProjectdetailsPageState extends State<ProjectdetailsPage> with TickerProviderStateMixin{
GlobalKey<ScaffoldState> _scaffoldKEY = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    TabController tabController=TabController(length: 2, vsync: this);
    return Scaffold(
    key: _scaffoldKEY,
        body: SingleChildScrollView(
          child: Column(
              children: [
                Stack(
                    children:[
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.37,
                            width:double.maxFinite ,
                            child: Padding(
                              padding:  EdgeInsets.only(left: 20,right: 20,top: 40, ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          Navigator.of(context).push(MaterialPageRoute(
                                       builder: (context) => ProjectsPage(),

                ));
                                        },
                                          child: Icon(Icons.arrow_back_ios)),
                                           Text("Project details ",
                                           style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),),

                                         Icon(Icons.more_vert)
                                    ],
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                               
                              
                                Padding(padding: EdgeInsets.only(right: 10,left: 0),
                                child:Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          child:  new CircularPercentIndicator(
                                            radius: 65.0,
                                            animation: true,
                                            animationDuration: 1200,
                                            lineWidth: 12.0,
                                            percent: 0.7,
                                            circularStrokeCap: CircularStrokeCap.round,
                                            center: new Text(
                                              "70%",
                                              style:
                                              new TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                            ),
                                            backgroundColor: Colors.black12,
                                            progressColor: Colors.green,
                                          ),

                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                        Row(
                                        children: [
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.05,
                                          width: MediaQuery.of(context).size.height*0.09,
                                          child:Center(
                                              child: Text('Open',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),)),

                                          decoration: BoxDecoration(
                                            color: Colors.green.shade100,
                                            borderRadius: BorderRadius.circular(15),

                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Container(
                                         height: MediaQuery.of(context).size.height*0.03,
                                          width: MediaQuery.of(context).size.height*0.05,
                                          child:Center(
                                              child: Icon(Icons.add,color: Colors.white,size: 18,)),

                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(10),

                                          ),
                                        ),
                                    
                                        
                                      ],
                                    ),

                                       

                                      ],
                                    ),
                                 Spacer(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                           Text("Team",style: TextStyle(color:Colors.black87,fontWeight:FontWeight.bold,fontSize: 18),),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                                             Stack(
                                    children: [
                                      Container(
                                        height: 35.0,
                                        width: 80.0
                                      ),
                                      Positioned(
                                        left: 45.0,
                                        child: Container(
                                          height: 35.0,
                                          width: 35.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(17.5),
                                          
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/1.png'),
                                              fit: BoxFit.cover
                                            )
                                          )
                                        )
                                      ),
                                      Positioned(
                                      left: 38.0,
                                      child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17.5),
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/2.png'),
                                          fit: BoxFit.cover
                                        ),
                                     
                                      ),
                                    ),
                                    ),
                                      Positioned(
                                      left: 25.0,
                                      child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17.5),
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/2.png'),
                                          fit: BoxFit.cover
                                        ),
                                     
                                      ),
                                    ),
                                    ),
                                        Positioned(
                                      left: 13.5,
                                      child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17.5),
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/4.png'),
                                          fit: BoxFit.cover
                                        ),
                                     
                                      ),
                                    ),
                                    ),

                                     Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17.5),
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/3.png'),
                                          fit: BoxFit.cover
                                        ),
                                     
                                      ),
                                    ), 
                                    
                                    
                                    ]
                                                                    ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                                          ],
                                        ),
                                  
                                  ],
                                ))
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
                          SizedBox(height: 5,),
                          TabBarWidgetPage(),

                    






                        ],
                      )

                    ]
                ),
              ],
          ),
        ),

    );
  }
}