import 'package:crm/screens/projeects/projects_widgets/Comment.dart';
import 'package:crm/screens/projeects/projects_widgets/project_details_widget.dart';
import 'package:flutter/material.dart';

class TabBarWidgetPage extends StatefulWidget {
  const TabBarWidgetPage({Key? key}) : super(key: key);

  @override
  State<TabBarWidgetPage> createState() => _TabBarWidgetPageState();
}

class _TabBarWidgetPageState extends State<TabBarWidgetPage> with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKEY=  GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  Container(
      key: _scaffoldKEY,
      child: DefaultTabController(
        length: 2,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            children: [
              Container(
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.teal.shade400,
                    borderRadius: BorderRadius.circular(10.0)
                ),

                child:  Padding(
                  padding:  EdgeInsets.all(7.0),
                  child: TabBar(
                      indicator: BoxDecoration(
                          color: Colors.tealAccent.shade700,

                          borderRadius: BorderRadius.circular(10.0)),
                      tabs: [

                        Tab(
                          child: Text(
                            "Task List",
                            style: TextStyle(color: Colors.white,), // Set the text color here
                          ),
                        ),
                        Tab(
                          child: Text(
                            "File",
                            style: TextStyle(color: Colors.white), // Set the text color here
                          ),
                        ),
                      
                      ]
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.5,
                child: TabBarView(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.5,
                      width: double.maxFinite,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding:  EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Add Task",style: TextStyle(color:Colors.black87,fontWeight:FontWeight.bold,fontSize: 18),),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                                 
                                  Spacer(),
                                  Text("All Tasks",style: TextStyle(color:Colors.black26,fontWeight:FontWeight.bold,fontSize: 14)),
                                  Icon(Icons.keyboard_arrow_down_outlined,),

                                ],
                              ),
                              ProjectDetailsWidget(),

                             
                              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                         
                            ],
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        //color:Colors.red,
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
                    Container(
                      height: MediaQuery.of(context).size.height*0.09,
                      width: double.maxFinite,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding:  EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Files",style: TextStyle(color:Colors.black87,fontWeight:FontWeight.bold,fontSize: 19),),
                                  Spacer(),
                                  Text("All File",style: TextStyle(color:Colors.black26,fontWeight:FontWeight.bold,fontSize: 14)),

                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.02,),

                              Container(
                                height: MediaQuery.of(context).size.height*0.10,
                                width: MediaQuery.of(context).size.width*0.8,
                                child: Padding(
                                  padding:  EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        height:MediaQuery.of(context).size.height*0.08,
                                        width: MediaQuery.of(context).size.width*0.15,
                                        child: Image.asset("assets/images/zip.png",),
                                        decoration: BoxDecoration(
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
                                      SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("System Icons set ",style: TextStyle(color:Colors.black87,fontWeight: FontWeight.bold),),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                          Text("Descrption",style: TextStyle(color:Colors.black26,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                      Spacer(),
                                      Icon(Icons.more_vert,size: 28,),
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
                              SizedBox(height: MediaQuery.of(context).size.height*0.02,),

                            ],
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        //color:Colors.white,
                          borderRadius: BorderRadius.circular(40),
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
            
         
            
                   

                  ],
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
