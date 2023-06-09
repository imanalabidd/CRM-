import 'package:crm/route/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class   ListViewWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(

      height: MediaQuery.of(context).size.height*0.3,
      width: MediaQuery.of(context).size.width*0.95,
      child:   ListView.builder(
        itemCount:5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title:  InkWell(
              onTap: (){
                Get.offNamed(RouteHelper.taskpage);
              },
              child: Container(
                height:MediaQuery.of(context).size.height*0.17,
                width:MediaQuery.of(context).size.width*0.8 ,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                        Icon(Icons.person,size: 25,color: Colors.teal.shade400,),
                        SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                        Text("John Doe",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                        SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                        Container(
                          height:MediaQuery.of(context).size.height*0.04 ,
                          width:MediaQuery.of(context).size.width*0.4 ,
                          margin: const EdgeInsets.only(top:25),
                          child: Text( "Today at 01:25:53 pm", style:TextStyle(color: Colors.black26,fontSize: 12)),
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
                              child: Text("Added",style: TextStyle(fontSize: 12,color: Colors.black,),)),
            
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.shade400,
                            borderRadius: BorderRadius.circular(5),
            
                          ),
                        ),
                        SizedBox(  width:MediaQuery.of(context).size.width*0.02  ,),
                        Text( "Task Comment : yes", style:TextStyle(color: Colors.black26,fontSize: 12)),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width:MediaQuery.of(context).size.width*0.1 ,),
                        SizedBox(height:MediaQuery.of(context).size.height*0.04  ,),
                        Text( "Task : #26", style:TextStyle(color: Colors.black26,fontSize: 12)),
                      ],
                    ),
                    InkWell(
                      onTap: (){
                        Get.offNamed(RouteHelper.projectdetailsPage);
                      },
                      child: Row(
                        children: [
                          SizedBox(width:MediaQuery.of(context).size.width*0.1 ,),
                          SizedBox(height:MediaQuery.of(context).size.height*0.02  ,),
                          Text( "Project : ", style:TextStyle(color: Colors.black26,fontSize: 12)),
                          Text( "Virue Lab ", style:TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
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
            ),
          );
        },
      ),
      decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft:  Radius.circular(15)),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 5,
                offset: Offset(1, 1),
                color:Colors.grey.withOpacity(0.1)
            )
          ]
      ),

    );
  }
}
