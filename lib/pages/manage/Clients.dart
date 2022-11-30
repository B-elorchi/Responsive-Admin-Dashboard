// import 'package:smart_admin_dashboard/core/constants/color_constants.dart';
// import 'package:smart_admin_dashboard/core/utils/colorful_tag.dart';
// import 'package:smart_admin_dashboard/models/recent_user_model.dart';
// import 'package:colorize_text_avatar/colorize_text_avatar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/pages/manage/data/users_data.dart';

import '../../screens/components/custom_appbar.dart';

class RecentUsers extends StatelessWidget {
  const RecentUsers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         CustomAppbar(),
        SizedBox(
          height: appPadding,
        ),
        Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        // color: Colors.amber,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Clients Management",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SingleChildScrollView(
            //scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: double.infinity,
              child: DataTable(
                horizontalMargin: 0,
                columnSpacing: 16,
                columns: [
                  DataColumn(
                    label: Text("Username"),
                  ),
                  DataColumn(
                    label: Text("Phone Number"),
                  ),
                  DataColumn(
                    label: Text("E-mail"),
                  ),
                  DataColumn(
                    label: Text("Registration Date"),
                  ),
                  DataColumn(
                    label: Text("Status"),
                  ),
                  DataColumn(
                    label: Text("Operation"),
                  ),
                ],
                rows: List.generate(
                  recentUsers.length,
                  (index) => recentUserDataRow(recentUsers[index], context),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
      ],
    );
  }
}

var color;
DataRow recentUserDataRow(RecentUser userInfo, BuildContext context) {
  if (userInfo.status == "Verified") {
    color = Colors.blue;
  } else if (userInfo.status == 'Verified/2') {
    color = Colors.green;
  } else {
    color = Colors.orange[400];
  }
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            // Text(
            // size: 35,
            // backgroundColor: Colors.white,
            // textColor: Colors.white,
            // fontSize: 14,
            // upperCase: true,
            // numberLetters: 1,
            // shape: Shape.Rectangle,
            // userInfo.name!,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                userInfo.name!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      DataCell(Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Color(0xFF292929)),
            borderRadius: BorderRadius.all(Radius.circular(5.0) //
                ),
          ),
          child: Text(userInfo.phone!))),
      DataCell(Text(userInfo.email!)),
      DataCell(Text(userInfo.date!)),
      // DataCell(Text(userInfo.status!)),
      DataCell(Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: Color(0xFF292929)),
            borderRadius: BorderRadius.all(Radius.circular(5.0) //
                ),
          ),
          width: 100,
          child: Text(
            userInfo.status!,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ))),
      DataCell(
        Row(
          children: [
            TextButton(
              child: Text('View', style: TextStyle(color: Colors.green)),
              onPressed: () {},
            ),
            SizedBox(
              width: 6,
            ),
            TextButton(
              child: Text("Delete", style: TextStyle(color: Colors.redAccent)),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                          title: Center(
                            child: Column(
                              children: [
                                Icon(Icons.warning_outlined,
                                    size: 36, color: Colors.red),
                                SizedBox(height: 20),
                                Text("Confirm Deletion"),
                              ],
                            ),
                          ),
                          content: Container(
                            // color: Color(0xFF292929),
                            height: 70,
                            child: Column(
                              children: [
                                Text(
                                    "Are you sure want to delete '${userInfo.name}'?"),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton.icon(
                                        icon: Icon(
                                          Icons.close,
                                          size: 14,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.grey),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        label: Text("Cancel")),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    ElevatedButton.icon(
                                        icon: Icon(
                                          Icons.delete,
                                          size: 14,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.red),
                                        onPressed: () {},
                                        label: Text("Delete"))
                                  ],
                                )
                              ],
                            ),
                          ));
                    });
              },
              // Delete
            ),
          ],
        ),
      ),
    ],
  );
}
