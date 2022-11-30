import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/controllers.dart';
import 'package:responsive_admin_dashboard/controllers/nav_controller.dart';
import 'package:responsive_admin_dashboard/pages/authentication/login.dart';
import 'package:responsive_admin_dashboard/routing/route.dart';
import 'package:responsive_admin_dashboard/routing/routes_names.dart';

Navigator localNavigation() => Navigator(
  key: navigationController.navigationKey,
  onGenerateRoute: generateRoute,
  initialRoute: OverviewPageRoute,
);
