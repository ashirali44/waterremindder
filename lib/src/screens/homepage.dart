import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:water_reminder1/src/screens/main_dashboard.dart';
import 'package:water_reminder1/src/screens/reminders.dart';

class MyCustomNavigationBar extends StatefulWidget {
  @override
  _MyCustomNavigationBarState createState() => _MyCustomNavigationBarState();
}

class _MyCustomNavigationBarState extends State<MyCustomNavigationBar> {
  int _currentIndex = 0;

  List<Widget> listWidget = [
    DetailDashboard(),
    DetailDashboard(),
    ReminderScreen(),
    DetailDashboard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: listWidget[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: EdgeInsets.only(bottom: 20, left: 15, right: 15),
        child: Container(
          padding: EdgeInsets.only(top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomNavBarItem(
                iconPath:
                    'assets/svgs/Drop.svg', // Replace with your SVG file path
                label: 'Item 1',
                isSelected: _currentIndex == 0,
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
              ),
              CustomNavBarItem(
                iconPath:
                    'assets/svgs/ChartPieSlice.svg', // Replace with your SVG file path
                label: 'Item 2',
                isSelected: _currentIndex == 1,
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
              ),
              CustomNavBarItem(
                iconPath:
                    'assets/svgs/StarFour.svg', // Replace with your SVG file path
                label: 'Item 3',
                isSelected: _currentIndex == 2,
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
              ),
              CustomNavBarItem(
                iconPath:
                    'assets/svgs/Sliders.svg', // Replace with your SVG file path
                label: 'Item 4',
                isSelected: _currentIndex == 3,
                onTap: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomNavBarItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  CustomNavBarItem({
    required this.iconPath,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 24.0,
            height: 24.0,
            color: isSelected ? Colors.white : Colors.grey,
          ),
          // Text(
          //   label,
          //   style: TextStyle(
          //     color: isSelected ? Colors.white : Colors.grey,
          //   ),
          // ),
        ],
      ),
    );
  }
}
