import 'package:crm/screens/projeects/project_details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../models/project.dart';
import '../../../route/route_helper.dart';

class ProjectWidget extends StatelessWidget {

  final List<Project> projectList; // Updated parameter to receive a list of teams

  ProjectWidget({required this.projectList});

  @override
  Widget build(BuildContext context) {
    print (MediaQuery.of(context).size.width);
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height*0.9,
        width: MediaQuery.of(context).size.width*0.95,
        child:   ListView.builder(
          itemCount:projectList.length,
          itemBuilder: (BuildContext context, int index){
            Project currentProject = projectList[index];
            return ListTile(
           title: InkWell(
                          onTap: (){
                             Navigator.of(context).push(MaterialPageRoute(builder:(context) => ProjectdetailsPage() ));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.2,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: Column(
                              children: [
                                Row(
    
                                  children: [
                                    SizedBox(height:MediaQuery.of(context).size.height*0.08 ,),
                                    SizedBox(width:MediaQuery.of(context).size.width*0.027 ,),
                                    Text(' ${currentProject.title}',style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),),
                                    Spacer(),
                                    Column(
                                      children: [
                                         SizedBox(height:MediaQuery.of(context).size.height*0.01,),
                                        Container(
                                          height: MediaQuery.of(context).size.height * 0.03,
                                          width: MediaQuery.of(context).size.width * 0.18,
                                          child: Center(
                                            child: Text(
                                              '${currentProject.status}',
                                              style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: _getStatusColor(currentProject.status),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),
                                      ],
                                    ),
                                     SizedBox(width:MediaQuery.of(context).size.width*0.04 ,),

                                    
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width:MediaQuery.of(context).size.width*0.035 , ),
                                    Container(
                                      height:MediaQuery.of(context).size.height*0.025 ,
                                      width:MediaQuery.of(context).size.width*0.2 ,
                                      child:Center(
                                          child: Text(' wordpress',style: TextStyle(fontSize: 12,color: Colors.white,),)),
    
                                      decoration: BoxDecoration(
                                        color: Colors.deepPurple.shade400,
                                        borderRadius: BorderRadius.circular(6),
    
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.03 ,),
                                 Row(
                                  

                                   children: [
                                    SizedBox(width:MediaQuery.of(context).size.width*0.0 , ),
                                     new LinearPercentIndicator(
                                       // width: MediaQuery.of(context).size.width - 150,
                                       width: MediaQuery.of(context).size.width - (MediaQuery.of(context).size.width / 2.54),
                                       animation: true,
                                       lineHeight: 7.0,
                                       animationDuration: 4000,
                                       percent: 0.9,
                                       center: Text("",style: TextStyle(color: Colors.grey[700],fontSize: 10),),
                                       barRadius: const Radius.circular(5),
                                       progressColor: Colors.green.shade300,
                                       backgroundColor:Colors.grey[200] ,
                                     ),
                                  Text("90%",style: TextStyle(color:Colors.green,fontSize: 12))
                                   ],
                                 ),
                                SizedBox( height:MediaQuery.of(context).size.height*0.02),
                                 Row(
                                      children: [
                                        SizedBox( width:MediaQuery.of(context).size.width*0.05 ),
                                        Icon(Icons.date_range,size:14,color: Colors.black,),
                                        SizedBox( width:MediaQuery.of(context).size.width*0.02 ),
                                        Text('${currentProject.startdate}',style: TextStyle(fontSize: 12,color: Colors.black,),),
                                       Spacer(),
                                        Icon(Icons.date_range,size:14,color: Colors.red,),
                                        SizedBox( width:MediaQuery.of(context).size.width*0.02 ),
                                        Text(' ${currentProject.deadline}',style: TextStyle(fontSize: 12,color: Colors.red,),)
                                       ,SizedBox( width:MediaQuery.of(context).size.width*0.05 ),
    
    
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
  Color _getStatusColor(String status) {
  switch (status) {
    case 'open':
    return Colors.teal.shade400;
    case 'completed':
      return Colors.green;
    case 'hold':
      return Colors.deepPurpleAccent.shade400;
    case 'canceled':
      return Colors.yellow.shade800;
    default:
      return Colors.grey; // Default color if the status doesn't match any case
  }
}
