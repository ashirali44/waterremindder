import 'package:flutter/material.dart';
import 'package:water_reminder1/src/constants/common_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarText; // Parameter to accept the app bar text

  CustomAppBar({required this.appBarText});
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        Icons.arrow_back_ios_new_outlined,
        color: Colors.black,
      ),
      backgroundColor: Colors.transparent, // Customize the background color
      elevation: 0, // Remove elevation shadow
      centerTitle: true,
      title: Text(appBarText, style: AppStyles.CommonHeadingStyle),
    );
  }
}
