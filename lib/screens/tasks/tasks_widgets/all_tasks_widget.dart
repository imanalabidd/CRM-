import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../route/route_helper.dart';

class AllTasksWidget extends StatelessWidget {

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
                            Get.offNamed(RouteHelper.getProjectsDetailsRoute());
                          },
                          child:  Container(
                          height:MediaQuery.of(context).size.height*0.15,
                          width:MediaQuery.of(context).size.width*0.8 ,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                        SizedBox(height:MediaQuery.of(context).size.height*0.05,),
                                        Text("Concpt creation",style: TextStyle(fontSize: 18),),
                                        Spacer(),
                                        Icon(Icons.task_alt_outlined,color: Colors.teal.shade600,),
                                        SizedBox(width:MediaQuery.of(context).size.width*0.04 ,),
                                     
                                      ],

                                    ),
                                    Row(
                                      children: [
                                         SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                        Container(
                                         
                                        width:MediaQuery.of(context).size.width*0.03 ,
                                        height:MediaQuery.of(context).size.height*0.015,
                                        decoration: BoxDecoration(
                                           color: Colors.teal.shade400,
                                          borderRadius: BorderRadius.circular(3)
                                        ),
                                        ),
                                       SizedBox( width:MediaQuery.of(context).size.width*0.03 ,),
                                         Text("NFT MarketPlace",style: TextStyle(fontSize: 12,color: Colors.grey.shade400,),),
                                      
                              
                                                                              ],
                                    ),
                                   Divider(
                                    color: Colors.grey.shade300, //color of divider
                                    height: 20, //height spacing of divider
                                    thickness: 1, //thickness of divier line
                                    indent: 9, //spacing at the start of divider
                                    endIndent: 25, //spacing at the end of divider
),
                                    Row(
                                      children: [
                                      SizedBox( width:MediaQuery.of(context).size.width*0.03 ,),

                                        Text("Due :Feb 13 ",style: TextStyle(color:Colors.black54,fontSize: 13 ),),
                                      Spacer(),
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage('assets/images/1.png'),
                                          
                                        ),
                                         SizedBox( width:MediaQuery.of(context).size.width*0.03 ,),
                                                                                  
   

                                      ],
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
                        ),
            );
    
          
          }
         ),
           ),
    );
       }
}