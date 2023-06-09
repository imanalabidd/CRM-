import 'package:crm/models/taskMembers.dart';
import 'package:crm/route/route_helper.dart';
import 'package:crm/screens/projeects/project_details_page.dart';
import 'package:crm/screens/projeects/projects_widgets/Comment.dart';
import 'package:crm/screens/tasks/tasks_widgets/list_view.dart';
import 'package:crm/screens/tasks/tasks_widgets/upload_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../models/base_url.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {

  GlobalKey<ScaffoldState> _scaffoldKEY = GlobalKey<ScaffoldState>();
  late Future<List<Memebers>> _membersData;
   final formKey = GlobalKey<FormState>();
  final RxList<dynamic> _comments = [].obs;
  final TextEditingController commentController = TextEditingController();
  TextEditingController _contentController = TextEditingController();

    File? _selectedFile;


  @override
  void initState() {
    super.initState();
    _membersData = fetchMembers();
  }
  Future<List<Memebers>> fetchMembers() async {
  final response = await http.get(Uri.parse('${BaseUrl.BASE_URL}/members.php'));

  if (response.statusCode == 200) {
    print(response.body); // Print the response body for debugging

    final List<dynamic> data = jsonDecode(response.body);
    return data.map((json) => Memebers.fromJson(json)).toList();
  } else {
    throw Exception('Failed to fetch team data');
  }
}
 
  void _selectFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        _selectedFile = File(result.files.single.path!);
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: const Offset(1, 1),
                    color: Colors.grey.withOpacity(0.2))
              ]),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                           Navigator.of(context).push(MaterialPageRoute(builder:(context) => ProjectdetailsPage() ));
                        },
                        child: const Icon(Icons.arrow_back_ios)),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.32,
                    ),
                    Text(
                      "Task details",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.teal.shade300),
                    ),
                    const Spacer(),
                    InkWell(onTap: () {}, child: const Icon(Icons.edit))
                  ],
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.28,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.1))
                      ]),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          const Text(
                            "CRM",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 20),
                          ),
                          const Spacer(),
                          const Icon(Icons.more_horiz),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.025,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Task  : #12 ",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 17),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.02),
                              Row(
                                children: [
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width: MediaQuery.of(context).size.height *
                                        0.15,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 10,
                                              spreadRadius: 5,
                                              offset: const Offset(1, 1),
                                              color:
                                                  Colors.grey.withOpacity(0.1))
                                        ]),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.02),
                                        const Text(
                                          "Milestone :",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                        const Text(
                                          " Text",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          CircularPercentIndicator(
                            radius: 45.0,
                            animation: true,
                            animationDuration: 1200,
                            lineWidth: 5.8,
                            percent: 0.7,
                            circularStrokeCap: CircularStrokeCap.round,
                            center: const Text(
                              "70%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            backgroundColor: Colors.black12,
                            progressColor: Colors.green,
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.08),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width:
                                    MediaQuery.of(context).size.height * 0.15,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          spreadRadius: 5,
                                          offset: const Offset(1, 1),
                                          color: Colors.grey.withOpacity(0.1))
                                    ]),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02),
                                    const Text(
                                      "Priority :",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Text(
                                      " Major",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      spreadRadius: 5,
                                      offset: const Offset(1, 1),
                                      color: Colors.grey.withOpacity(0.1))
                                ]),
                            child: Column(
                              children: [
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01),
                                Row(
                                  children: [
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02),
                                    const Text(
                                      "Start Date -",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Text(
                                      " Deadline",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.red,
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.01),
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.008),
                                Row(
                                  children: [
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.01),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02),
                                    const Text(
                                      "01.01.2023 -",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Text(
                                      " 03.05.2023",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.red,
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.01),
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey.shade400,
                indent: 30,
                endIndent: 30,
                thickness: 1, // Customize the thickness of the line
              ),

              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.shade300),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: const Offset(1, 1),
                          color: Colors.grey.withOpacity(0.1))
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Text(
                          "When the user types in the input field",
                          style: TextStyle(
                              color: Colors.grey.shade400, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Text(
                          "the onChanged callback is called .",
                          style: TextStyle(
                              color: Colors.grey.shade400, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                  ],
                ),
              ), 
              SizedBox(height: MediaQuery.of(context).size.
              height*0.02,),
           Row(
  children: [
    SizedBox(width: MediaQuery.of(context).size.width*0.2,),
   
    Container(
      height: 1.0,
      width: 70.0,
      margin: EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.grey.shade400),
        ),
      ),
    ),
     SizedBox(width: MediaQuery.of(context).size.width*0.01,),
    Text(
      'Activitis',
      style: TextStyle(fontSize: 16.0,color: Colors.grey.shade600),
    ),
     SizedBox(width: MediaQuery.of(context).size.width*0.01,),
    Container(
      height: 1.0,
      width: 70.0,
      margin: EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.grey.shade400),
        ),
      ),
    ),
  ],
),
  SizedBox(height: MediaQuery.of(context).size.
              height*0.01,),
    
               Container(
           
                child: ListViewWidget1(membersList: [],),
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: const Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2))
                    ]),
              ),
                SizedBox(height: MediaQuery.of(context).size.
              height*0.03,),
              //  Container(
              //   color:Colors.white,
              //  height: MediaQuery.of(context).size.height*0.35,
              //   width: MediaQuery.of(context).size.width*0.9,
              // child: CommentSection()
              //  ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.23,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                     Row(
  children: [
    SizedBox(width: MediaQuery.of(context).size.width*0.15,),
   
    Container(
      height: 1.0,
      width: 70.0,
      margin: EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.grey.shade400),
        ),
      ),
    ),
     SizedBox(width: MediaQuery.of(context).size.width*0.01,),
    Text(
      'Comments',
      style: TextStyle(fontSize: 16.0,color: Colors.grey.shade600),
    ),
     SizedBox(width: MediaQuery.of(context).size.width*0.01,),
    Container(
      height: 1.0,
      width: 70.0,
      margin: EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.grey.shade400),
        ),
      ),
    ),
  ],
),
  SizedBox(height: MediaQuery.of(context).size.
              height*0.01,),
              Container(child: 
              Column(
                children: [
                  TextField(
  controller: _contentController,
  decoration: InputDecoration(
    hintText: 'Add a comment...',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(12),
    ),
  ),
),
                      SizedBox(height: MediaQuery.of(context).size.
              height*0.01,), 
                    Row(
                      children: [
                         ElevatedButton(
                        style: ElevatedButton.styleFrom(
                             primary: Colors.teal.shade400, // background color
                           onPrimary: Colors.white, // text color
                          shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10.0),
      
    ),
                            
                          
                          ),            onPressed: _selectFile,
            child: Text('Select File'),
          ),
                       Spacer(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                             primary: Colors.teal.shade400, // background color
                           onPrimary: Colors.white, // text color
                          shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10.0),
      
    ),
                            
                          
                          ),
                          onPressed: () {
                            setState(() {
                              _comments.add(
                                Comment(
                                  username:
                                      'John Doe', // Replace with user's username
                                  content: _contentController.text,
                                ),
                              );
                              _contentController.clear();
                            });
                          },
                          child: const Text('Add Comment'),
                        ),
                      ],
                    ),
                ],
              ),
               decoration: BoxDecoration(
                color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 5,
                                    offset: const Offset(1, 1),
                                    color: Colors.grey.withOpacity(0.1))
                              ]),),
                    

                   
    
                   Expanded(
                      child: ListView.builder(
                        itemCount: _comments.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: ListTile(
                              title: Text(_comments[index].username),
                              subtitle: Text(_comments[index].content),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}

class Comment {
  final String username;
  final String content;

  Comment({
    required this.username,
    required this.content,
  });
}
