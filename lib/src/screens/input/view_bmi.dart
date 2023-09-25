import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:water_reminder1/src/constants/app_colors.dart';
import 'package:water_reminder1/src/constants/common_styles.dart';
import 'package:water_reminder1/src/screens/main_dashboard.dart';
import 'package:water_reminder1/src/widgets/common_appbar.dart';
import 'package:water_reminder1/src/widgets/common_button.dart';

class ViewBMI extends StatefulWidget {
  const ViewBMI({super.key});

  @override
  State<ViewBMI> createState() => _ViewBMIState();
}

class _ViewBMIState extends State<ViewBMI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarText: 'Target',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
          height: 50,
          child: CommonAppButton(
            textButton: 'Submit',
            onTap: () {
              Get.to(DetailDashboard());
            },
          )).marginOnly(left: 15, right: 15, bottom: 20),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Your BMI is',
              style: AppStyles.CommonHeadingStyle.copyWith(fontSize: 35),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '24.5',
              style: AppStyles.CommonHeadingStyle.copyWith(
                  fontSize: 40, color: AppColors.primaryColor),
            ),
            SizedBox(height: 30.0),
            TargetBox(),
          ],
        ),
      ).marginOnly(left: 15, right: 15),
    );
  }

  Widget TargetBox() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
          color: AppColors.lightPrimaryColor.withOpacity(.5),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          border: Border.all(width: 1, color: AppColors.primaryBoldColor)),
      child: Row(children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your target',
                style: AppStyles.CommonHeadingStyle.copyWith(fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '12 Glasses',
                style: AppStyles.CommonHeadingStyle.copyWith(
                    fontSize: 40, color: AppColors.primaryColor),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Change target',
                  style: AppStyles.CommonHeadingStyle.copyWith(
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                  )),
            ],
          ),
        ),
      ]).marginAll(15),
    );
  }
}
