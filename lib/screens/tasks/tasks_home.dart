

import 'package:crm/profile/profil.dart';
import 'package:crm/route/route_helper.dart';
import 'package:crm/screens/tasks/tasks_widgets/to_do_wiget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../home/home_widgets/navigation_drawer_widget.dart';

class TasksHome extends StatefulWidget {
  const TasksHome({super.key});

  @override
  State<TasksHome> createState() => _TasksHomeState();
}


class _TasksHomeState extends State<TasksHome> {
    bool _isPressed = false;
    bool _isPressed1 = false;
    bool _isPressed2 = false;
    bool _isPressed3 = false;
    bool _isPressed4 = false;
    bool _isPressed5 = false;
    String _selectedOption = 'Done';
      GlobalKey<ScaffoldState> _scaffoldKEY=  GlobalKey<ScaffoldState>();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
            key: _scaffoldKEY,
      drawer: NavigationDrawerWidget(),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height/2.7,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                child: Column(children: [
                   Padding(
                  padding:  EdgeInsets.all(0.0),
                  child: Row(
                      children: [
                        SizedBox(height:90,),
                        IconButton(
                          icon: Icon(Icons.menu_outlined),
                          onPressed: ()=>_scaffoldKEY.currentState?.openDrawer(), ),
                       Text("Tasks",style: TextStyle(color: Colors.black87,fontSize: 20),),
                        Spacer(),
                      
                        Icon(Icons.add_alert_outlined,color: Colors.black87,),
                        SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                        InkWell(
                          onTap: () {
                             Navigator.of(context).push(MaterialPageRoute(builder:(context) => PorfilePage() ));
                          },
                          child: Icon(Icons.person,color: Colors.black87,)),
                        SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                      ]
                  ),
                ),
                         
                  Row(children: [
                      SizedBox(width:MediaQuery.of(context).size.width*0.03,),  
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         
                       Text("October",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w600),) ,
                        Text("10 tasks are today",style: TextStyle(color:Colors.green,fontSize: 12,fontWeight: FontWeight.w500),) 
                      ],
                    ),
                    Spacer(),
                    Column(children: [
                      FaIcon(
                      FontAwesomeIcons.calendarCheck,
                      size: 25,
                      color: Colors.green,
                    ),
                       SizedBox(width:MediaQuery.of(context).size.width*0.05,),  
                  
                    ],),
                  
                  ],),
                 SizedBox(height:MediaQuery.of(context).size.height*0.03,), 
                    
                  Row(
                    children: [
                    SizedBox(width:MediaQuery.of(context).size.width*0.06,),  
                      InkWell( onTap: (){
                         setState(() {
                                       _isPressed = !_isPressed;
                                        _isPressed1 = false;
                                        _isPressed2 = false;
                                        _isPressed3 = false;
                                        _isPressed4 = false;
                                        _isPressed5 = false;
                                    });

                      },
                        child: Container(
                           height: MediaQuery.of(context).size.height*0.09,
                            width: MediaQuery.of(context).size.width*0.112,
                         child:  Column(
                           children: [
                          SizedBox(height:MediaQuery.of(context).size.height*0.02), 
                        Text("23",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                         SizedBox(height:MediaQuery.of(context).size.height*0.005), 
                         Text("Wed",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w300),),
                                          ],
                                        ) ,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(18),
                             color: _isPressed ? Colors.teal.shade300: Colors.teal.shade100,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  offset: Offset(1, 1),
                                  color:Colors.grey.withOpacity(0.2)
                                )
                        ]
                                          ),
                         
                        ),
                      ),
                     SizedBox(width:MediaQuery.of(context).size.width*0.03,),  
                        InkWell( onTap: (){
                         setState(() {
                                       _isPressed1 = !_isPressed1;
                                        _isPressed = false;
                                        _isPressed2 = false;
                                        _isPressed3 = false;
                                        _isPressed4 = false;
                                        _isPressed5 = false;
                                    });

                      },
                        child: Container(
                           height: MediaQuery.of(context).size.height*0.09,
                            width: MediaQuery.of(context).size.width*0.112,
                         child:  Column(
                           children: [
                          SizedBox(height:MediaQuery.of(context).size.height*0.02), 
                        Text("23",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                         SizedBox(height:MediaQuery.of(context).size.height*0.005), 
                         Text("Wed",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w300),),
                                          ],
                                        ) ,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(18),
                             color: _isPressed1 ? Colors.teal.shade300: Colors.teal.shade100,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  offset: Offset(1, 1),
                                  color:Colors.grey.withOpacity(0.2)
                                )
                        ]
                                          ),
                         
                        ),
                      ),
                     SizedBox(width:MediaQuery.of(context).size.width*0.03,),  
                        InkWell( onTap: (){
                         setState(() {
                                       _isPressed2 = !_isPressed2;
                                            _isPressed = false;
                                            _isPressed1 = false;
                                            _isPressed3 = false;
                                            _isPressed4 = false;
                                            _isPressed5 = false;
                                    });

                      },
                        child: Container(
                           height: MediaQuery.of(context).size.height*0.09,
                            width: MediaQuery.of(context).size.width*0.112,
                         child:  Column(
                           children: [
                          SizedBox(height:MediaQuery.of(context).size.height*0.02), 
                        Text("23",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                         SizedBox(height:MediaQuery.of(context).size.height*0.005), 
                         Text("Wed",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w300),),
                                          ],
                                        ) ,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(18),
                             color: _isPressed2 ? Colors.teal.shade300: Colors.teal.shade100,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  offset: Offset(1, 1),
                                  color:Colors.grey.withOpacity(0.2)
                                )
                        ]
                                          ),
                         
                        ),
                      ),
                     SizedBox(width:MediaQuery.of(context).size.width*0.03,),  
                        InkWell( onTap: (){
                         setState(() {
                                      _isPressed2 = false;
                                          _isPressed = false;
                                          _isPressed1 = false;
                                          _isPressed3 = !_isPressed3;
                                          _isPressed4 = false;
                                          _isPressed5 = false;
                                    });

                      },
                        child: Container(
                           height: MediaQuery.of(context).size.height*0.09,
                            width: MediaQuery.of(context).size.width*0.112,
                         child:  Column(
                           children: [
                          SizedBox(height:MediaQuery.of(context).size.height*0.02), 
                        Text("23",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                         SizedBox(height:MediaQuery.of(context).size.height*0.005), 
                         Text("Wed",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w300),),
                                          ],
                                        ) ,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(18),
                             color: _isPressed3 ? Colors.teal.shade300: Colors.teal.shade100,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  offset: Offset(1, 1),
                                  color:Colors.grey.withOpacity(0.2)
                                )
                        ]
                                          ),
                         
                        ),
                      ),
                     SizedBox(width:MediaQuery.of(context).size.width*0.03,),  
                       InkWell( onTap: (){
                         setState(() {
                                         _isPressed2 = false;
                                          _isPressed = false;
                                          _isPressed1 = false;
                                          _isPressed3 = false;
                                          _isPressed4 = !_isPressed3;
                                          _isPressed5 = false;
                                    });

                      },
                        child: Container(
                           height: MediaQuery.of(context).size.height*0.09,
                            width: MediaQuery.of(context).size.width*0.112,
                         child:  Column(
                           children: [
                          SizedBox(height:MediaQuery.of(context).size.height*0.02), 
                        Text("23",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                         SizedBox(height:MediaQuery.of(context).size.height*0.005), 
                         Text("Wed",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w300),),
                                          ],
                                        ) ,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(18),
                             color: _isPressed4 ? Colors.teal.shade300: Colors.teal.shade100,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  offset: Offset(1, 1),
                                  color:Colors.grey.withOpacity(0.2)
                                )
                        ]
                                          ),
                         
                        ),
                      ),
                     SizedBox(width:MediaQuery.of(context).size.width*0.03,),  
                        InkWell( onTap: (){
                         setState(() {
                                      _isPressed5 = !_isPressed5;
                                           
                                          _isPressed = false;
                                          _isPressed1 = false;
                                          _isPressed3 = false;
                                          _isPressed4 = false;
                                          _isPressed2 = false;
                                    });

                      },
                        child: Container(
                           height: MediaQuery.of(context).size.height*0.09,
                            width: MediaQuery.of(context).size.width*0.112,
                         child:  Column(
                           children: [
                          SizedBox(height:MediaQuery.of(context).size.height*0.02), 
                        Text("23",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                         SizedBox(height:MediaQuery.of(context).size.height*0.005), 
                         Text("Wed",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w300),),
                                          ],
                                        ) ,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(18),
                             color: _isPressed5 ? Colors.teal.shade300: Colors.teal.shade100,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  offset: Offset(1, 1),
                                  color:Colors.grey.withOpacity(0.2)
                                )
                        ]
                                          ),
                         
                        ),
                      ),
                     SizedBox(width:MediaQuery.of(context).size.width*0.03,),  
                 
                   ],
                  ),
                ]),
              ),
            ),
             decoration: BoxDecoration(
                      
        
                        color:Colors.white,
                        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular((20))),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: Offset(1, 1),
                            color:Colors.grey.withOpacity(0.4)
                          )
                  ]
                ), 
          ),
          SizedBox(height:MediaQuery.of(context).size.height *0.03),
     SingleChildScrollView(
       child: Container( 
     
        height: MediaQuery.of(context).size.height*0.9,
        width:  MediaQuery.of(context).size.height*0.9,
         child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                 SizedBox(width:MediaQuery.of(context).size.width*0.03,),  
                Row(
                  children: [
                       SizedBox(width:MediaQuery.of(context).size.width*0.05,),  
                  DropdownButtonHideUnderline(
       child: ButtonTheme(
         alignedDropdown: true,
         child: DropdownButton<String>(
        value: _selectedOption,
        onChanged: (String? newValue) {
          setState(() {
            _selectedOption = newValue!;
          });
        },
        items: <String>['Done', 'ToDo', 'In Progress'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(value),
            ),
          );
        }).toList(),
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 25,
        elevation: 16,
        style: TextStyle(color: Colors.black),
        underline: Container(
          height: MediaQuery.of(context).size.height*0.0,
          color: Colors.red
        ),
         ),
       ),
     ),
     
                 
                  ],
                ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                _buildWidgetForSelectedOption(),
              ],
            ),
         decoration: BoxDecoration(
                        
          
                          color:Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 5,
                              offset: Offset(1, 1),
                              color:Colors.grey.withOpacity(0.4)
                            )
                    ]
                  ), 
         ),
     ),
     ] ),
    ));
  }

  Widget _buildWidgetForSelectedOption() {
    switch (_selectedOption) {
      case 'Done':
        return   SingleChildScrollView(
          child: Center(
            child: Container(
            height: MediaQuery.of(context).size.height*0.9,
            width: MediaQuery.of(context).size.width*0.95,
            child:   ListView.builder(
              itemCount:5,
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
              
                                    Text("Task Task",style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.w600),),
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
             CircleAvatar(
                                         radius: 25,
                                         backgroundImage: AssetImage('assets/images/1.png'),
                                         
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
          ),
        );
      case 'ToDo':
        return  Center(
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
               CircleAvatar(
                                       radius: 25,
                                       backgroundImage: AssetImage('assets/images/2.png'),
                                       
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
      case 'In Progress':
        return Center(
          child: Container(
           child:   Container(
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
          CircleAvatar(
                                       radius: 25,
                                       backgroundImage: AssetImage('assets/images/3.png'),
                                       
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
             )
          ),
        );
      default:
        return SizedBox.shrink();
    }
  }





}
