import 'package:crm/screens/tasks/Done_page.dart';
import 'package:crm/screens/tasks/in_progress.dart';
import 'package:crm/screens/tasks/task_page.dart';
import 'package:crm/screens/tasks/tasks_home.dart';
import 'package:crm/screens/team/team_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../screens/SplashScreen.dart';
import '../screens/auth/sign_in.dart';
import '../screens/home/home.dart';
import '../screens/projeects/project_details_page.dart';
import '../screens/projeects/projects_page.dart';

class RouteHelper{
  static const String initial = '/';
  static const String projects = '/projects';
  static const String projectdetailsPage = '/project-detail';
  static const String taskpage= '/task-page';
  static const String taskshome= '/tasks-home';
  static const String teampage= '/team-page';
  static const String signIn='/sign-in';
  static const String splashscreen='/splash-screen';
  

  
  





  static String getInitialRoute()=> '$initial';
  static String getProjectsRoute()=> '$projects';
  static String getProjectsDetailsRoute()=> '$projectdetailsPage';
  static String getTaskPageRoute()=> '$taskpage';
  static String getTasksHomeRoute()=> '$taskshome';
  static String getTeamPage()=> '$teampage';
  static String getSignInRoute() => '$signIn';
  static String getSplashScreenRoute() => '$splashscreen';
  


  static List<GetPage> routes =[
    GetPage(name:initial, page:(){
      print("GetPage name:home");
      return HomePage();
    },
        transition: Transition.circularReveal
    ),
    GetPage(name:projects, page:(){
      print("GetPage name:project");
      return ProjectsPage();
    },
        transition: Transition.circularReveal
    ),
     GetPage(name: signIn, page: () {
      return SignInPage();
    }),
    GetPage(name:projectdetailsPage, page:(){
      print("GetPage name:projects details page");
      return ProjectdetailsPage();
    },
        transition: Transition.circularReveal
    ),
    GetPage(name:taskpage, page:(){
      print("GetPage name:task pages");
      return TaskPage();
    },
        transition: Transition.circularReveal
    ),
     GetPage(name:taskshome, page:(){
      print("GetPage name:task home");
      return TasksHome();
    },
        transition: Transition.circularReveal
    ),
      GetPage(name:splashscreen, page:(){
      print("GetPage name:splash page");
      return SplashScreen();
    },
        transition: Transition.fadeIn
    ),
    
     

  ];
}

