import 'package:crm/components/colors.dart';
import 'package:crm/screens/projeects/projects_page.dart';
import 'package:crm/screens/tasks/tasks_home.dart';
import 'package:crm/uitls/app_dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../team/team_page.dart';
import '../home.dart';
class NavigationDrawerWidget extends StatelessWidget {
  final padding=EdgeInsets.symmetric(horizontal:0);

  @override
  Widget build(BuildContext context) {
   final Image='assets/images/logo1.png';





    return SizedBox(
      width: MediaQuery.of(context).size.width*0.60,
      child: Material(
        color: Colors.white,
        child: ListView(
          padding: padding,
          children:<Widget> [
            buildHeader(
              Image:Image,

            ),
            Column(
             children: [
            ListTile(
                  leading:  Icon(Icons.desktop_mac_sharp),
                  title: const Text("Dashboard"),
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context){
                          return  HomePage();
                        }));
                  },
                ),
            SizedBox(height:15,),
            ListTile(
              leading: const Icon(Icons.workspaces_outline),
              title: const Text("Projects"),
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context){
                      return   ProjectsPage();
                    }));
              },
            ),
            SizedBox(height:15,),
            ListTile(
              leading: const Icon(Icons.task_alt_outlined),
              title: const Text("Tasks"),
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context){
                      return   TasksHome();
                    }));
              },
            ),
            SizedBox(height:15,),

             ListTile(
          leading: const Icon(Icons.people_alt_sharp),
          title: const Text("Team"),
          onTap: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context){
                  return TeamPage();
                }));
          },
        ),
            SizedBox(height:15,),
                ]),



        ],
      ),
      ),
    );

  }
  Widget buildHeader({
    required String Image,


  })=>
      Row(
        children: [
          SizedBox(height: 150),
          SizedBox(width: 20),
          Container(
            color: Colors.white,
           padding: padding.add(EdgeInsets.symmetric(vertical:10)),
            child:CircleAvatar(radius: 40,
                backgroundColor:Colors.white ,backgroundImage:AssetImage(Image),),
          ),]);






}



/*
class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
         buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    );
  }
  Widget buildHeader(BuildContext context)=> Container(
  padding: EdgeInsets.only( top:MediaQuery.of(context).padding.top,)
   );
  Widget buildMenuItems(BuildContext context)=>Container(
    padding:  EdgeInsets.all(24),
    child: Wrap(
      runSpacing: 16,
      children: [
        ListTile(
          leading: const Icon(Icons.desktop_mac_sharp),
          title: const Text("Dashboard"),
          onTap: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context){
                   return  const HomePage();
                }));
          },
        ),
        ListTile(
          leading: const Icon(Icons.date_range),
          title: const Text("Events"),
          onTap: (){},
        ),
        const Divider(color: Colors.black54,),
        ListTile(
          leading: const Icon(Icons.shopping_bag),
          title: const Text("Clients"),
          onTap: (){},
        ),
        const Divider(color: Colors.black54,),
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text("Projects"),
          onTap: (){},
        ),
        const Divider(color: Colors.black54,),ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text("Tasks"),
          onTap: (){},
        ),
        const Divider(color: Colors.black54,),ListTile(
          leading: const Icon(Icons.message,),
          title: const Text("Messages"),
          onTap: (){},
        ),


      ],
    ),
  );
}
* */
