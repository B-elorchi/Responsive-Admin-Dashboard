import 'dart:html';

import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
// import 'package:flutter_web_dashboard/pages/overview/widgets/info_card.dart';
import 'package:responsive_admin_dashboard/pages/operation/screens/info_card.dart';
import 'package:responsive_admin_dashboard/screens/components/custom_appbar.dart';

class OverviewCardsMediumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 5),
          child: CustomAppbar(),
        ),
        SizedBox(
          height: appPadding,
        ),
        Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    InfoCard(
                      title: "Active Client",
                      value: "71",
                      onTap: () {
                        print('Info card Cliced');
                      },
                      topColor: Colors.orange,
                    ),
                    SizedBox(
                      width: _width / 64,
                    ),
                    InfoCard(
                      title: "Active Vales",
                      value: "7",
                      onTap: () {},
                      topColor: Colors.red,
                    ),
                    SizedBox(
                      width: _width / 64,
                    ),
                    InfoCard(
                      title: "Operation in progress",
                      value: "17",
                      topColor: Colors.lightGreen,
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: _width / 64,
                ),
                Row(
                  children: [
                    InfoCard(
                      title: "Cancelled Operation",
                      value: "3",
                      topColor: Colors.redAccent,
                      onTap: () {},
                    ),
                    SizedBox(
                      width: _width / 64,
                    ),
                    InfoCard(
                      title: "Operation Validated",
                      value: "32",
                      onTap: () {},
                      topColor: Colors.blueGrey,
                    ),
                    SizedBox(
                      width: _width / 64,
                    ),
                    InfoCard(
                      title: "Scheduled deliveries",
                      value: "32",
                      onTap: () {},
                      topColor: Colors.blueAccent,
                    ),
                    SizedBox(
                      width: _width / 64,
                    ),
                    InfoCard(
                      title: "Scheduled deliveries",
                      value: "32",
                      onTap: () {},
                      topColor: Colors.blueGrey,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        width: 300,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // backgroundBlendMode:BlendMode.color;
                          // borderRadius: BorderRadius.circular(5),
                          border: Border(
                              top: BorderSide(
                                  width: 6,
                                  color: Color.fromARGB(255, 24, 186, 226),
                                  style: BorderStyle.solid)),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 20, bottom: 15)),
                              Text(
                                'Blance in Progress',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromARGB(77, 36, 30, 30)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                r'255,524$',
                                style: TextStyle(fontSize: 28),
                              )
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        print('clickable');
                      },
                    ),
                    SizedBox(
                      width: _width / 64,
                    ),
                    InkWell(
                      child: Container(
                        width: 300,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // backgroundBlendMode:BlendMode.color;
                          // borderRadius: BorderRadius.circular(5),
                          border: Border(
                              top: BorderSide(
                                  width: 6,
                                  color: Color.fromARGB(255, 155, 41, 0),
                                  style: BorderStyle.solid)),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 20, bottom: 15)),
                              Text(
                                'Total',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromARGB(77, 36, 30, 30)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                r'255,524$',
                                style: TextStyle(fontSize: 28),
                              )
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        print('clickable');
                      },
                    ),
                    SizedBox(
                      width: _width / 64,
                    ),
                    InkWell(
                      child: Container(
                        width: 300,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // backgroundBlendMode:BlendMode.color;
                          // borderRadius: BorderRadius.circular(5),
                          border: Border(
                              top: BorderSide(
                                  width: 6,
                                  color: Colors.brown,
                                  style: BorderStyle.solid)),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 20, bottom: 15)),
                              Text(
                                'Blance',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromARGB(77, 36, 30, 30)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                r'255,524$',
                                style: TextStyle(fontSize: 28),
                              )
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        print('clickable');
                      },
                    ),
                  ],
                ),
              ],
            )),
      ],
    ));
  }
}
