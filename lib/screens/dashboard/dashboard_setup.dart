// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:template/screens/dashboard/home/home_screen.dart';
import 'package:template/screens/dashboard/wellness/wellness_screen.dart';
import 'package:template/setup/environment/env.dart';
import 'package:template/setup/widgets/bottom_navigation_bar_widget.dart';
import 'package:template/setup/widgets/container_widget.dart';
import 'package:template/setup/widgets/label_widget.dart';

class DashboardSetup extends StatefulWidget {
  int selectedItem;
  DashboardSetup({
    super.key,
    this.selectedItem = 0,
  });

  @override
  State<DashboardSetup> createState() => _DashboardSetup();
}

class _DashboardSetup extends State<DashboardSetup> {
  static String? _title;

  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    WellnessScreen(),
    Container(),
    Container(),
    Container(),
  ];

  void _onItemTapped(int index) {
    setState(
      () {
        widget.selectedItem = index;
        print(index);

        switch (index) {
          case 0:
            _title = 'Good Morning, \nAlan Tan';
            break;
          case 1:
            _title = 'Wellness';
            break;
          case 2:
            _title = 'Screen 3';
            break;
          case 3:
            _title = 'Screen 4';
          case 4:
            _title = 'Screen 5';
            break;
        }
      },
    );
  }

  @override
  void initState() {
    _title = 'Good Morning, \nAlan Tan';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ENV.primaryBgColor,
        title: LabelWidget.sm(
          text: _title,
          textColor: ENV.whiteTextColor,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: widget.selectedItem == 0 ? false : true,
        leading: IconButton(
          onPressed: () {},
          icon: widget.selectedItem == 0
              ? Icon(Icons.menu)
              : Icon(Icons.arrow_back),
          color: ENV.whiteTextColor,
        ),
        actions: widget.selectedItem == 0
            ? <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.message),
                  color: ENV.whiteTextColor,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.phone),
                  color: ENV.whiteTextColor,
                ),
              ]
            : <Widget>[],
      ),
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ContainerWidget(
                decoration: BoxDecoration(
                  color: ENV.primaryBgColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                height: 30,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
              _widgetOptions.elementAt(widget.selectedItem),
            ],
          ),
          if (widget.selectedItem == 0)
            Positioned(
              top: 0,
              left: 50,
              right: 50,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: ENV.secondaryBgColor,
                  prefixIcon: const Icon(Icons.search),
                  labelText: "Search for panel provider",
                  focusColor: ENV.primaryBgColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: ENV.boxShadow),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: ENV.boxShadow),
                  ),
                ),
              ),
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        onTap: _onItemTapped,
        selectedIndex: widget.selectedItem,
      ),
    );
  }
}
