import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../route/route_helper.dart';

class TasksWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height*0.8,
        width: MediaQuery.of(context).size.width*0.95,
        child:   ListView.builder(
          itemCount:8,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
           title: InkWell(
                          onTap: (){
                            Get.offNamed(RouteHelper.getProjectsDetailsRoute());
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.18,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: Column(
                              children: [
                                Row(
    
                                  children: [
                                    SizedBox(height:MediaQuery.of(context).size.height*0.06 ,),
                                    SizedBox(width:MediaQuery.of(context).size.width*0.05 ,),
                                    Text("WordPress Theme Design",style: TextStyle(color: Colors.black54,fontSize: 20),),
                                    Spacer(),
                                    Icon(Icons.more_horiz),
                                    SizedBox(width:MediaQuery.of(context).size.width*0.025 , ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width:MediaQuery.of(context).size.width*0.03 , ),
                                     SizedBox(height:MediaQuery.of(context).size.height*0.04 ,),
                                    Text("Due date",style: TextStyle(fontSize: 12,color: Colors.grey.shade500,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                 
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox( width:MediaQuery.of(context).size.width*0.02 ),
                                        Icon(Icons.timer_outlined,size:14,color: Colors.black54,),
                                        SizedBox( width:MediaQuery.of(context).size.width*0.02 ),
                                        Text("10 am - 1pm",style: TextStyle(fontSize: 12,color: Colors.black54,),),
                                        SizedBox( width:MediaQuery.of(context).size.width*0.03 ),
                                        Icon(Icons.date_range,size:12,color: Colors.red,),
                                        SizedBox( width:MediaQuery.of(context).size.width*0.02 ),
                                        Text("Feb 28",style: TextStyle(fontSize: 12,color: Colors.red,),)
    
    
    
                                      ],
                                    ),
                                     SizedBox( height:MediaQuery.of(context).size.height*0.02),
                                     Row(
                                       children: [
                                         Container(
                                          height:MediaQuery.of(context).size.height*0.01 ,
                                          width: 250,
                                          child: Padding(
                                            padding: EdgeInsets.all(0),
                                            child: new LinearPercentIndicator(
                                              width: MediaQuery.of(context).size.width - 150,
                                              animation: true,
                                              lineHeight: 20.0,
                                              animationDuration: 4000,
                                              percent: 0.9,
                                              center: Text(" ",style: TextStyle(color: Colors.grey[700],fontSize: 10),),
                                              barRadius: const Radius.circular(5),
                                              progressColor: Colors.green.shade300,
                                              backgroundColor:Colors.grey[200] ,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color:Colors.white,
                                              borderRadius: BorderRadius.circular(0),
                                    
                                          ),
                                    ),
                                    Text("70%",style: TextStyle(fontSize: 12))
                                       ],
                                     ),
        
                                
                                    
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
                        ),
            );
    
          
          }
         ),
           ),
    );
       }
        }