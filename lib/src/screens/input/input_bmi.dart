import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:water_reminder1/src/constants/common_styles.dart';
import 'package:water_reminder1/src/widgets/common_appbar.dart';
import 'package:water_reminder1/src/widgets/common_button.dart';
import 'package:water_reminder1/src/widgets/common_input.dart';

class InputBMI extends StatefulWidget {
  const InputBMI({super.key});

  @override
  State<InputBMI> createState() => _InputBMIScreenState();
}

class _InputBMIScreenState extends State<InputBMI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarText: 'Calculate BMI',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
          height: 50,
          child: CommonAppButton(
            textButton: 'Next',
            onTap: () {},
          )).marginOnly(left: 15, right: 15, bottom: 20),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hy Umar, Enter your weight and height',
              style: AppStyles.CommonHeadingStyle2.copyWith(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Weight',
              style: AppStyles.CommonHeadingStyle2.copyWith(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            CommonInputField(
              helpText: 'Weight',
            ),
            SizedBox(height: 20.0),
            Text(
              'Height',
              style: AppStyles.CommonHeadingStyle2.copyWith(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            CommonInputField(
              helpText: 'Height',
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ).marginOnly(left: 15, right: 15),
    );
  }
}
