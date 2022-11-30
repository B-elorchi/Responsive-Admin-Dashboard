import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/pages/authentication/login.dart';
import 'package:responsive_admin_dashboard/routing/routes_names.dart';
import 'package:responsive_admin_dashboard/screens/dash_board_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    // case LoginPageRoute:
    //    return _getPageRoute(LoginPage());
    case OverviewPageRoute:
      return _getPageRoute(DashBoardScreen());
    // case clientsPageRoute:
    //   return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(LoginPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
