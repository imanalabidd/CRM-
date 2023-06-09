import 'package:crm/models/team.dart';
import 'package:flutter/material.dart';

class TeamWidget extends StatelessWidget {
  final List<Team> teamList; // Updated parameter to receive a list of teams

  TeamWidget({required this.teamList});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.74,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: teamList.length,
          itemBuilder: (BuildContext context, int index) {
            Team currentTeam = teamList[index];
            return Padding(
              padding: EdgeInsets.all(6.0),
              child: ListTile(
                title: Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.02,
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/1.png'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      VerticalDivider(
                        color: Colors.black26,
                        width: 1,
                        thickness: 1,
                        indent: 8,
                        endIndent: 8,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Text(
                            ' ${currentTeam.first_name}',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          Text(
                            ' ${currentTeam.email}',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          Text(
                            ' ${currentTeam.phone}',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.055,
                          ),
                          Icon(Icons.remove_circle, color: Colors.red),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
