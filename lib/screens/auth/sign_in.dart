// import 'package:crm/route/route_helper.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';


// class SignInPage extends StatefulWidget {
//   const SignInPage({super.key});

//   @override
//   State<SignInPage> createState() => _SignInPageState();
// }

// class _SignInPageState extends State<SignInPage> {
//   var _phoneController = TextEditingController();
//   var _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//     body: SingleChildScrollView(
//       child: Container(
//         height: MediaQuery.of(context).size.height,
//         child: Column(children: [
//           SizedBox(height:MediaQuery.of(context).size.height*0.07,),
//           Container(
//             height: MediaQuery.of(context).size.height*0.18,
//             width: MediaQuery.of(context).size.width*0.6,
          
//             child: Image(image: AssetImage("assets/images/logo.png"),),
//           ),
//            SizedBox(height:MediaQuery.of(context).size.height*0.12,),
//         Text("Login ",style: TextStyle(fontSize: 30,color:Colors.white,fontWeight: FontWeight.bold),),
//            SizedBox(height:MediaQuery.of(context).size.height*0.09,),
//            Padding(
//              padding: const EdgeInsets.all(12.0),
//              child: Container(
//                height: MediaQuery.of(context).size.height*0.06,
//               width: MediaQuery.of(context).size.height*0.55,
//                                   decoration: BoxDecoration(
//                                       color:Colors.white,
//                                       borderRadius: BorderRadius.circular(15),
//                                       boxShadow: [
//                                         BoxShadow(
//                                             blurRadius: 3,
//                                             spreadRadius: 1,
//                                             offset: Offset(1, 1),
//                                             color:Colors.grey.withOpacity(0.2)
//                                         )
//                                       ]
//                                   ),
//                                   child: TextField(
//                                     controller: _phoneController,
//                                     decoration: InputDecoration(
//                                         hintText: "write your e-mail",
//                                         prefixIcon: Icon(Icons.email_outlined, color:Colors.grey),
//                                         focusedBorder: OutlineInputBorder(
//                                             borderRadius: BorderRadius.circular(15),
//                                             borderSide: BorderSide(
//                                                 color:Colors.white,
//                                                 width: 1.0
//                                             )
//                                         ),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderRadius: BorderRadius.circular(15),
//                                             borderSide: BorderSide(
//                                                 color:Colors.white,
//                                                 width: 1.0
//                                             )
//                                         ),
//                                         border: OutlineInputBorder(
//                                             borderRadius: BorderRadius.circular(15)
//                                         )
//                                     ),
//                                   ),
//                                 ),
//            ),
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Container(
//                  height: MediaQuery.of(context).size.height*0.06,
//                 width: MediaQuery.of(context).size.height*0.55,
//                                   decoration: BoxDecoration(
//                                       color:Colors.white,
//                                       borderRadius: BorderRadius.circular(15),
//                                       boxShadow: [
//                                         BoxShadow(
//                                             blurRadius: 3,
//                                             spreadRadius: 1,
//                                             offset: Offset(1, 1),
//                                             color:Colors.grey.withOpacity(0.2)
//                                         )
//                                       ]
//                                   ),
//                                   child: TextField(
//                                     controller: _passwordController,
//                                     obscureText: true,
//                                     decoration: InputDecoration(
//                                         hintText: "password",
//                                         prefixIcon: Icon(Icons.password, color:Colors.grey),
//                                         focusedBorder: OutlineInputBorder(
//                                             borderRadius: BorderRadius.circular(15),
//                                             borderSide: BorderSide(
//                                                 color:Colors.white,
//                                                 width: 1.0
//                                             )
//                                         ),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderRadius: BorderRadius.circular(15),
//                                             borderSide: BorderSide(
//                                                 color:Colors.white,
//                                                 width: 1.0
//                                             )
//                                         ),
//                                         border: OutlineInputBorder(
//                                             borderRadius: BorderRadius.circular(15)
//                                         )
//                                     ),
//                                   ),
//                                 ),
//             ),
           
//              Padding(
//                padding: const EdgeInsets.all(12.0),
//                child: InkWell(
//                 onTap: (){
//                   Get.toNamed(RouteHelper.initial);
//                 },
//                  child: Container(
//                               width:MediaQuery.of(context).size.width*0.45,
//                               height: MediaQuery.of(context).size.height*0.06,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(15),
//                                   color: Colors.white
//                               ),
//                               child:Center(
//                                 child: Text("Sign in",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),)
                            
                    
                               
//                               ),
//                             ),
//                ),
//              ),
          
          
          
//         ]),
      
//         decoration: BoxDecoration(
//           image: DecorationImage(
//           image: AssetImage("assets/images/bbg.png"),
//           fit: BoxFit.cover),
//         ),
//       ),
//     )
      
      
//     );
//   }
  
  
// }
import 'package:crm/screens/home/home.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top:50,left: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 5),
                      child: Icon(Icons.arrow_back_ios,size: 15,),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.teal)
                    ),
                  )
                ],
              ),
               SizedBox(width: MediaQuery.of(context).size.width*0.05,),
               Center(
                child: Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.grey.shade200
                  ),
                  child: Image.asset('assets/images/logo1.png',width: 60,height: 60,))),
               SizedBox(height: MediaQuery.of(context).size.height*0.07,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                   Text('Login',style: TextStyle(
                                 fontFamily: 'Tajawal',
                                 color: Colors.black87,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 24.0)),
                 ],
               ), 
                               SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                              Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                    SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                                  Text('Login to continue using the app',style: TextStyle(
                             fontFamily: 'Tajawal',
                             color: Colors.black38,
                             fontWeight: FontWeight.w600,
                             fontSize: 14.0)),
                                ],
                              ), 
                                 SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                              Row(
                                children: [
                                  SizedBox(width: MediaQuery.of(context).size.
                                   width*0.05,),
                                  Text('Email',style: TextStyle(
                                     fontFamily: 'Tajawal',
                                     color: Colors.black87,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 20.0)),

                                ],
                              ),
                             SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                              Row(
                                children: [
                                   SizedBox(width: MediaQuery.of(context).size.
                                   width*0.05,),
                                  Container(
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.85,
                      child: Opacity(
                        opacity: 0.5,
                        child: TextField(
                           textInputAction: TextInputAction.done, // or any other appropriate action               
                        decoration: InputDecoration(
                          hintText: ' Enter your email', 
                          hintStyle: TextStyle(  
                             
                        fontFamily: 'Tajawal',
                          fontSize: 14.0,
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.bold),
                           focusedBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Colors.grey.shade300), // Set the desired text color
                                      ),
                          
                        
                        ),
                        
                                          ),
                      )
                    ,
                    decoration: BoxDecoration(
               color:Colors.grey.shade100,
                      borderRadius: BorderRadius
                      .all(Radius.circular(20),
                      ),
                      border: Border.all(color: Colors.grey.shade300
                    ),
                ),
                 ),
                                ],
                              ) ,
      
                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                              Row(
                                children: [
                                   SizedBox(width: MediaQuery.of(context).size.
                                   width*0.05,),
                                  Text('Password',style: TextStyle(
                                     fontFamily: 'Tajawal',
                                     color: Colors.black87,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 20.0)),
                                ],
                              ),
                           SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                              Row(
                                children: [
                                   SizedBox(width: MediaQuery.of(context).size.
                                   width*0.05,),
                                  Container(
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.85,
                      child: Opacity(
                        opacity: 0.5,
                        child: TextField(
                          // textInputAction: TextInputAction.done, // or any other appropriate action               
                        decoration: InputDecoration(
                          hintText: ' Enter  password', 
                          hintStyle: TextStyle(  
                             
                        fontFamily: 'Tajawal',
                          fontSize: 14.0,
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.bold),
                           focusedBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Colors.grey.shade300), // Set the desired text color
                                      ),
                          
                        
                        ),
                        
                                          ),
                      )
                    ,
                    decoration: BoxDecoration(
               color:Colors.grey.shade100,
                      borderRadius: BorderRadius
                      .all(Radius.circular(20),
                      ),
                      border: Border.all(color: Colors.grey.shade300
                    ),
                ),
                 ),
                                ],
                              ) ,
                 SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forget Password?',style: TextStyle(
                                 fontFamily: 'Tajawal',
                                 color: Colors.grey.shade600,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 16.0)),
                                   SizedBox(width: MediaQuery.of(context).size.
                                   width*0.05,),
                   
                  
                  ],
                 ),
                 SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                 InkWell(
                  onTap:() {
                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => HomePage() ));
                  },
                   child: Container(
                    height: 50,
                    width:MediaQuery.of(context).size.width*0.9,
                    child: Padding(
                      padding:  EdgeInsets.only(top:15,left: 150),
                      child: Text('Login',style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    color: Colors.white,
                              
                                    fontSize: 20.0)),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20),
                      
                    ),
                   ),
                 ),
              
                
                
                
            ],
          ),
        ),
      ),
    );

  }
}