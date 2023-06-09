import 'package:crm/screens/projeects/projects_widgets/project_details_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'all_tasks_widget.dart';

class TabBarWidgetPage extends StatefulWidget {
  const TabBarWidgetPage({Key? key}) : super(key: key);

  @override
  State<TabBarWidgetPage> createState() => _TabBarWidgetPageState();
}

class _TabBarWidgetPageState extends State<TabBarWidgetPage> with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKEY= GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _scaffoldKEY,
      child: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.05,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(40.0)
              ),

              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:TabBar(
  isScrollable: true,
  unselectedLabelColor: Colors.red,
  indicator: BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(30.0)),
  tabs: [
    Tab(
      child: Container(
         height: MediaQuery.of(context).size.height*0.05,
              width: MediaQuery.of(context).size.width*0.13,
        child: Icon(Icons.search_outlined),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(30)
        ),
      ),
    ),
    Tab(
      child: Container(
         height: MediaQuery.of(context).size.height*0.05,
              width: MediaQuery.of(context).size.width*0.14,
        child: Center(
          child: Text(
            "All",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(25)
        ),
      ),
    ),
    Tab(
      child: Container(
         height: MediaQuery.of(context).size.height*0.05,
              width: MediaQuery.of(context).size.width*0.19,
        child: Center(
          child: Text(
            "Open",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(25)
        ),
      ),
    ),
    Tab(
      child: Container(
         height: MediaQuery.of(context).size.height*0.05,
              width: MediaQuery.of(context).size.width*0.19,
        child: Center(
          child: Text(
            "Achived",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(25)
        ),
      ),
    ),
    Tab(
      child: Container(
         height: MediaQuery.of(context).size.height*0.05,
              width: MediaQuery.of(context).size.width*0.19,
        child: Center(
          child: Text(
            "Closed",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(25)
        ),
      ),
    ),
  ]
)

             


              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.9,
              child: TabBarView(
                children: [
                   Container(
                    child: Text('2132'),
                  ),
                  AllTasksWidget(),
                 
                  Container(
                    child: Text('212'),
                  ),
                   Container(
                    child: Text('212'),
                  ),
                   Container(
                    child: Text('212'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
