import 'package:crm/screens/projeects/projects_widgets/projects_widget.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../models/project.dart';

import '../../widgets/project_overview.dart';
import 'package:crm/models/base_url.dart';
import '../home/home_widgets/navigation_drawer_widget.dart';

class ProjectsPage  extends StatefulWidget {

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
 GlobalKey<ScaffoldState> _scaffoldKEY = GlobalKey<ScaffoldState>();
  late Future<List<Project>> _projectData;

  @override
  void initState() {
    super.initState();
    _projectData = fetchTeams();
  }

Future<List<Project>> fetchTeams() async {
  final response = await http.get(Uri.parse('${BaseUrl.BASE_URL}/project.php'));

  if (response.statusCode == 200) {
    print(response.body); // Print the response body for debugging

    final List<dynamic> data = jsonDecode(response.body);
    return data.map((json) => Project.fromJson(json)).toList();
} else {
  print('Error: ${response.statusCode} - ${response.reasonPhrase}');
  throw Exception('Failed to fetch project data');
}

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKEY,
      drawer: NavigationDrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(children:[
                Padding(
                  padding:  EdgeInsets.all(10.0),
                  child: Row(
                      children: [
                        SizedBox(height:90,),
                        IconButton(
                          icon: Icon(Icons.menu_outlined),
                          onPressed: ()=>_scaffoldKEY.currentState?.openDrawer(), ),
                       Text("Projects",style: TextStyle(color: Colors.black87,fontSize: 20),),
                        Spacer(),
                      
                        Icon(Icons.add_alert_outlined,color: Colors.black87,),
                        SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                        Icon(Icons.face,color: Colors.black87,),
                        SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                      ]
                  ),
                ),
              ]

              ),
            ),
            Stack(

                children:[
                  Column(
                    children: [
                      //projects overview
                    ProjectOverView(),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    Container(
                    
                           height: MediaQuery.of(context).size.height*0.34,
                             width: MediaQuery.of(context).size.width*0.95,
                             child:     FutureBuilder<List<Project>>(
                future: _projectData, // Use the fetched team data
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final List<Project> teams = snapshot.data!;

                    return ProjectWidget(projectList: teams); // Pass the team data to TeamWidget
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }

                  return CircularProgressIndicator(color: Colors.blue,);
                },
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
                        ),)
                    ],
                  ),

                ]
            ),
          ],
        ),
      ),


    );
  }
}