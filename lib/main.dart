import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:provider/provider.dart';
import 'package:responsive_admin_dashboard/controllers/controller.dart';
import 'package:responsive_admin_dashboard/controllers/menu_controllers.dart';
import 'package:responsive_admin_dashboard/controllers/nav_controller.dart';
import 'package:responsive_admin_dashboard/helpers/local_navigation.dart';
import 'package:responsive_admin_dashboard/pages/authentication/login.dart';
import 'package:responsive_admin_dashboard/routing/routes_names.dart';
import 'package:responsive_admin_dashboard/screens/dash_board_screen.dart';

void main() {
  //Get.put(MenuController());
  Get.put(NavigationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      initialRoute: LoginPageRoute,
      // onUnknownRoute: GetPage(name: '/not-found', page: () => PageNotFound(), transition: Transition.fadeIn),
      
      // getPages: [
      //    GetPage(name: rootRoute, page: () {
      //      return MyApp();
      //    }),  
    //  GetPage(name:LoginPageRoute, page: () => LoginPage()),
      title: 'Responsive Admin Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Controller(),)
        ],
        child: localNavigation(),
        // DashBoardScreen(),
      ),
    );
  }
}

