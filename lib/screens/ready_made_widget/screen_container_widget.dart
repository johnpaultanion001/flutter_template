import 'package:flutter/material.dart';
import 'package:template/setup/environment/env.dart';
import 'package:template/setup/widgets/container_widget.dart';
import 'package:template/setup/widgets/label_widget.dart';

class ScreenContainerWidget extends StatelessWidget {
  final String? title;
  final Icon? leadIcon;
  final VoidCallback? onLeadIconTap;
  final bool? isVisibleSubContainer;
  final Widget? subContainerContent;
  final Widget? containerContent;
  final int? subFlexExpanded;
  final int? flexExpanded;

  const ScreenContainerWidget({
    super.key,
    this.title = "test",
    this.leadIcon,
    this.onLeadIconTap,
    this.isVisibleSubContainer = false,
    this.subContainerContent,
    this.containerContent,
    this.subFlexExpanded = 1,
    this.flexExpanded = 9,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ENV.primaryBgColor,
      appBar: AppBar(
        backgroundColor: ENV.primaryBgColor,
        title: LabelWidget.sm(
          text: title!,
          textColor: ENV.whiteTextColor,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: onLeadIconTap,
          icon: Icon(Icons.arrow_back),
          color: ENV.whiteTextColor,
        ),
      ),
      body: Column(
        children: [
          Visibility(
            visible: isVisibleSubContainer!,
            child: Expanded(
              flex: subFlexExpanded!,
              child: ContainerWidget(
                decoration: BoxDecoration(
                  color: ENV.primaryBgColor,
                ),
                child: subContainerContent,
              ),
            ),
          ),
          Expanded(
            flex: flexExpanded!,
            child: ContainerWidget(
              decoration: BoxDecoration(
                color: ENV.whiteTextColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: containerContent,
            ),
          ),
        ],
      ),
    );
  }
}
