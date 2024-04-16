// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:template/setup/environment/env.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final Function(int)? onTap;
  final int? selectedIndex;

  const BottomNavigationBarWidget({
    super.key,
    this.onTap,
    this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ENV.boxShadow,
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: BottomNavigationBar(
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // icon: ImageIcon(AssetImage('assets/drawable/ic_scan_qr.png')),
            icon: ENV.iconNav1,
            label: ENV.titleNav1,
          ),
          BottomNavigationBarItem(
            icon: ENV.iconNav2,
            label: ENV.titleNav2,
          ),
          BottomNavigationBarItem(
            icon: ENV.iconNav3,
            label: ENV.titleNav3,
          ),
          BottomNavigationBarItem(
            icon: ENV.iconNav4,
            label: ENV.titleNav4,
          ),
          BottomNavigationBarItem(
            icon: ENV.iconNav5,
            label: ENV.titleNav5,
          ),
        ],
        currentIndex: selectedIndex!,
        selectedItemColor: ENV.primaryBgColor,
        unselectedItemColor: ENV.grayBgColor,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        showUnselectedLabels: true,
      ),
    );
  }
}
