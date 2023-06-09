import 'package:crm/screens/tasks/task_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../route/route_helper.dart';

class ProjectDetailsWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height*0.9,
        width: MediaQuery.of(context).size.width,
        child:   ListView.builder(
          itemCount:10,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
           title: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder:(context) => TaskPage() ));
                          },
                          child:  Container(
                          height:MediaQuery.of(context).size.height*0.15,
                          width:MediaQuery.of(context).size.width ,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                        Icon(Icons.person,size: 25,color: Colors.tealAccent.shade700,),
                                        SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                        Text("John Doe",style: TextStyle(fontSize: 20),),
                                        SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                        Container(
                                          height:MediaQuery.of(context).size.height*0.04 ,
                                         width:MediaQuery.of(context).size.width*0.3 ,
                                          margin: const EdgeInsets.only(top:25),
                                          child: Text( "Today at 01:25:53 pm", style:TextStyle(color: Colors.black26,fontSize: 12)),
                                        ),
      
      
                                      ],
      
                                    ),
                                    Row(
                                      children: [
                                         SizedBox(width:MediaQuery.of(context).size.width*0.09  ,),
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.03,
                                          width: MediaQuery.of(context).size.height*0.07,
                                          child:Center(
                                              child: Text("Added",style: TextStyle(fontSize: 12,color: Colors.white,),)),
      
                                          decoration: BoxDecoration(
                                            color: Colors.deepPurple,
                                            borderRadius: BorderRadius.circular(5),
      
                                          ),
                                        ),
                                        SizedBox(  width:MediaQuery.of(context).size.width*0.02  ,),
                                        Text( "Task Comment : yes", style:TextStyle(color: Colors.black26,fontSize: 12)),
                                        SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                                        Icon(Icons.arrow_forward_ios,color: Colors.tealAccent.shade700,),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                         SizedBox(width:MediaQuery.of(context).size.width*0.1 ,),
                                         SizedBox(height:MediaQuery.of(context).size.height*0.04  ,),
                                        Text( "Task : #26", style:TextStyle(color: Colors.black26,fontSize: 12)),
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