import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../route/route_helper.dart';

class ToDoWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    print('media query');
    print (MediaQuery.of(context).size.width);
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height*0.9,
        width: MediaQuery.of(context).size.width*0.95,
        child:   ListView.builder(
          itemCount:3,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
           title: InkWell(
                          onTap: (){
                         
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.15,
                            width: MediaQuery.of(context).size.width*0.5,
                            child: Row(children: [
                            SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                            
                              Column(
                                 
                              children: [
                                   SizedBox(height: MediaQuery.of(context).size.height*0.02,),

                                Text("Task test",style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.w600),),
                                Text(" test test ",style: TextStyle(color: Colors.black54,fontSize: 14),),
                    
                                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                                Container(
                                  height:MediaQuery.of(context).size.height*0.035 ,
                                  width:MediaQuery.of(context).size.width*0.15 ,
                                  child:Center(
                                      child: Text("4d",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),)),
    
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple.shade400,
                                    borderRadius: BorderRadius.circular(10),
    
                                  ),
                                ),
                            
    
                              ],
                            ),
    //ımage
    Spacer(),
    Container(   
       height: MediaQuery.of(context).size.height*0.12,
        width: MediaQuery.of(context).size.width*0.15,
       decoration: BoxDecoration(
                                color:Colors.white,
                                borderRadius: BorderRadius.circular(20),
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
                           SizedBox(width: MediaQuery.of(context).size.width*0.03,), ]),
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