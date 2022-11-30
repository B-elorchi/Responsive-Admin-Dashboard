import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/constants/responsive.dart';
import 'package:responsive_admin_dashboard/controllers/controller.dart';
// import 'package:responsive_admin_dashboard/pages/m_clients.dart';
import 'package:responsive_admin_dashboard/pages/manage/Clients.dart';
import 'package:responsive_admin_dashboard/pages/manage/partner.dart';
import 'package:responsive_admin_dashboard/pages/manage/valets.dart';
import 'package:responsive_admin_dashboard/pages/operation/operation_overview.dart';
import 'package:responsive_admin_dashboard/screens/components/dashboard_content.dart';

import '../pages/authentication/login.dart';
import 'components/drawer_menu.dart';
import 'package:provider/provider.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: DrawerMenu(),
      key: context.read<Controller>().scaffoldKey,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: DrawerMenu(),
              ),
            Expanded(
              flex: 5,
              // child: EditableText(),
              // child: RecentUsers(),
              child: DashboardContent(),
              // child: ValetManagement(),
              // child: PartnerManagement(),
              //  child: OverviewCardsMediumScreen(),
            )
          ],
        ),
      ),
    );
  }
}
