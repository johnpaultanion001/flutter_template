// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:template/setup/environment/env.dart';
import 'package:template/setup/widgets/container_widget.dart';
import 'package:template/setup/widgets/label_widget.dart';

class WellnessScreen extends StatefulWidget {
  const WellnessScreen({super.key});

  @override
  State<WellnessScreen> createState() => _WellnessScreenState();
}

class _WellnessScreenState extends State<WellnessScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ContainerWidget(
        decoration: BoxDecoration(color: ENV.secondaryBgColor),
        padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LabelWidget.sm(
                text: "Health Insight",
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 10),
              ContainerWidget(
                height: 110,
                decoration: BoxDecoration(color: ENV.primaryBgColor),
              ),
              SizedBox(height: 10),
              LabelWidget.xs(
                text: '19 April, 2024',
                textColor: ENV.secondaryTextColor,
              ),
              SizedBox(height: 30),
              LabelWidget.sm(
                text: "Health Tips & Tools:",
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Column(
                    children: [
                      ContainerWidget(
                        height: 110,
                        width: 170,
                        decoration: BoxDecoration(color: ENV.primaryBgColor),
                      ),
                      SizedBox(height: 5),
                      LabelWidget.sm(
                        text: "Education Materials",
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      ContainerWidget(
                        height: 110,
                        width: 170,
                        decoration: BoxDecoration(color: ENV.primaryBgColor),
                      ),
                      SizedBox(height: 5),
                      LabelWidget.sm(
                        text: "Education Materials",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Column(
                    children: [
                      ContainerWidget(
                        height: 110,
                        width: 170,
                        decoration: BoxDecoration(color: ENV.primaryBgColor),
                      ),
                      SizedBox(height: 5),
                      LabelWidget.sm(
                        text: "Education Materials",
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      ContainerWidget(
                        height: 110,
                        width: 170,
                        decoration: BoxDecoration(color: ENV.primaryBgColor),
                      ),
                      SizedBox(height: 5),
                      LabelWidget.sm(
                        text: "Education Materials",
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
