import 'package:crm/models/task.dart';
import 'package:crm/models/taskMembers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListViewWidget1 extends StatelessWidget {
  final List<Memebers> membersList; // Updated parameter to receive a list of teams

  ListViewWidget1({required this.membersList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.3,
      width: MediaQuery.of(context).size.width*0.95,
      child:   ListView.builder(
        itemCount:membersList.length,
        itemBuilder: (BuildContext context, int index) {
          Memebers currentMembers = membersList[index];
          return ListTile(
            title:  Container(
              height:MediaQuery.of(context).size.height*0.13,
              width:MediaQuery.of(context).size.width*0.8 ,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                      Icon(Icons.person,size: 25,),
                      SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                      Text(' ${currentMembers.name}',style: TextStyle(fontSize: 20),),
                      SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                      Container(
                        height:MediaQuery.of(context).size.height*0.04 ,
                        width:MediaQuery.of(context).size.width*0.4 ,
                        margin: const EdgeInsets.only(top:25),
                        child: Text( ' ${currentMembers.date}', style:TextStyle(color: Colors.black26,fontSize: 10)),
                      ),


                    ],

                  ),
                  Row(
                    children: [
                      SizedBox(width:MediaQuery.of(context).size.width*0.09  ,),
                      Container(
                        height:MediaQuery.of(context).size.height*0.03 ,
                        width:MediaQuery.of(context).size.width*0.15 ,
                        child:Center(
                            child: Text('${currentMembers.status}',style: TextStyle(fontSize: 12,color: Colors.white,),)),

                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade400,
                          borderRadius: BorderRadius.circular(5),

                        ),
                      ),
                      SizedBox(  width:MediaQuery.of(context).size.width*0.02  ,),
                      Text( "Task Comment : yes", style:TextStyle(color: Colors.black26,fontSize: 12)),
                    ],
                  ),
                 
                
                ],
              ),

              decoration: BoxDecoration(
                  color:Colors.teal.shade100,
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
          );
        },
      ),
       decoration: BoxDecoration(
                                 color:Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 10,
                                        spreadRadius: 5,
                                        offset: Offset(1, 1),
                                        color:Colors.grey.withOpacity(0.2)
                                    )
                                  ]
                              ), 

    );
  }
}
