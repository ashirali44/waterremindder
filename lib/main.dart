import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_reminder1/src/screens/homepage.dart';
import 'package:water_reminder1/src/screens/input/input_bmi.dart';
import 'package:water_reminder1/src/screens/input/input_name.dart';
import 'package:water_reminder1/src/screens/input/view_bmi.dart';
import 'package:water_reminder1/src/screens/main_dashboard.dart';
import 'package:water_reminder1/src/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Water Reminder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.syneTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //    useMaterial3: true,
      ),
      home: MyCustomNavigationBar(),
    );
  }
}
