import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:water_reminder1/src/constants/common_styles.dart';
import 'package:water_reminder1/src/screens/input/input_bmi.dart';
import 'package:water_reminder1/src/widgets/common_appbar.dart';
import 'package:water_reminder1/src/widgets/common_button.dart';
import 'package:water_reminder1/src/widgets/common_input.dart';

class InputNameScreen extends StatefulWidget {
  const InputNameScreen({super.key});

  @override
  State<InputNameScreen> createState() => _InputNameScreenState();
}

class _InputNameScreenState extends State<InputNameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarText: 'Calculate',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
          height: 50,
          child: CommonAppButton(
            textButton: 'Next',
            onTap: () {
              Get.to(InputBMI());
            },
          )).marginOnly(left: 15, right: 15, bottom: 20),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your name',
              style: AppStyles.CommonHeadingStyle2.copyWith(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            CommonInputField(
              helpText: 'Name',
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ).marginOnly(left: 15, right: 15),
    );
  }
}
