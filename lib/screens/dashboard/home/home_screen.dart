// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:template/setup/environment/env.dart';
import 'package:template/setup/widgets/container_widget.dart';
import 'package:template/setup/widgets/label_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ContainerWidget(
        padding: EdgeInsets.only(top: 45, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Column(
                  //   children: [
                  //     Icon(
                  //       Icons.list_alt_sharp,
                  //       color: ENV.primaryBgColor,
                  //       size: 30,
                  //     ),
                  //     SizedBox(height: 10),
                  //     LabelWidget.xs(
                  //       text: 'Letter of \n Authorization \n (LOA)',
                  //       textAlign: TextAlign.center,
                  //     )
                  //   ],
                  // ),
                  //  Column(
                  //   children: [
                  //     Icon(
                  //       Icons.list_alt_sharp,
                  //       color: ENV.primaryBgColor,
                  //       size: 30,
                  //     ),
                  //     SizedBox(height: 10),
                  //     LabelWidget.xs(
                  //       text: 'Claim \n Submission',
                  //       textAlign: TextAlign.center,
                  //     )
                  //   ],
                  // ),
                  // Column(
                  //   children: [
                  //     Icon(
                  //       Icons.list_alt_sharp,
                  //       color: ENV.primaryBgColor,
                  //       size: 30,
                  //     ),
                  //     SizedBox(height: 10),
                  //     LabelWidget.xs(
                  //       text: 'TeleMed',
                  //       textAlign: TextAlign.center,
                  //     )
                  //   ],
                  // ),
                  // Column(
                  //   children: [
                  //     Icon(
                  //       Icons.list_alt_sharp,
                  //       color: ENV.primaryBgColor,
                  //       size: 30,
                  //     ),
                  //     SizedBox(height: 10),
                  //     LabelWidget.xs(
                  //       text: 'Medical \n Card',
                  //       textAlign: TextAlign.center,
                  //     )
                  //   ],
                  // ),
                  ContainerWidget(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: ENV.primaryBgColor),
                  ),
                  ContainerWidget(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: ENV.primaryBgColor),
                  ),
                  ContainerWidget(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: ENV.primaryBgColor),
                  ),
                  ContainerWidget(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: ENV.primaryBgColor),
                  ),
                ],
              ),
              SizedBox(height: 30),
              LabelWidget.sm(text: "Whats Hot", fontWeight: FontWeight.bold),
              SizedBox(height: 10),
              ContainerWidget(
                height: 110,
                decoration: BoxDecoration(color: ENV.primaryBgColor),
              ),
              SizedBox(height: 10),
              DefaultTabController(
                length: 2,
                child: SizedBox(
                  height: 1200,
                  child: Scaffold(
                    appBar: AppBar(
                        centerTitle: false,
                        title: LabelWidget.sm(
                            text: "Benefits and Utilization",
                            fontWeight: FontWeight.bold),
                        bottom: TabBar(
                          tabs: [
                            Tab(
                              text: "Employee/Policy Holder",
                            ),
                            Tab(
                              text: "Dependent/Insured",
                            ),
                          ],
                        )),
                    body: TabBarView(
                      children: [
                        ContainerWidget(
                          decoration: BoxDecoration(color: ENV.primaryBgColor),
                        ),
                        ContainerWidget(
                          decoration: BoxDecoration(color: ENV.grayBgColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
