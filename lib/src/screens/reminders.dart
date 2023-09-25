import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:water_reminder1/src/constants/app_colors.dart';
import 'package:water_reminder1/src/constants/common_styles.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 40),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Reminders',
              style: AppStyles.CommonHeadingStyle.copyWith(fontSize: 32),
            ),
            SvgPicture.asset('assets/svgs/PlusCircle.svg')
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ReminderBox()
      ]),
    );
  }

  Widget ReminderBox() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      padding: EdgeInsets.only(left: 05, right: 05),
      decoration: BoxDecoration(
        color: Color(0xffF8F8F8),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Daily',
                        style:
                            AppStyles.CommonHeadingStyle.copyWith(fontSize: 18),
                      ),
                      SizedBox(
                        height: 05,
                      ),
                      Text(
                        '07:00 PM',
                        style: AppStyles.CommonHeadingStyle.copyWith(
                            fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                  Switch(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Colors.white, // Set active color to white
                    inactiveThumbColor:
                        Colors.white, // Set inactive color to white
                    inactiveTrackColor: Colors.transparent,
                    activeTrackColor:
                        AppColors.primaryColor, // Set active color to white
                  ),
                ],
              ),
              WeeklyView().marginOnly(bottom: 10),
            ],
          ),
        ),
      ]).marginAll(15),
    );
  }

  Widget WeeklyView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        WeekBoxView('Su'),
        WeekBoxView('Mo'),
        WeekBoxView('Tu'),
        WeekBoxView('We'),
        WeekBoxView('Th'),
        WeekBoxView('Fr'),
        WeekBoxView('Sa'),
      ],
    );
  }

  Widget WeekBoxView(String text) {
    return Column(
      children: [
        Text(text),
        SizedBox(
          height: 05,
        ),
        Icon(
          Icons.check_circle_rounded,
          color: AppColors.primaryColor,
        )
      ],
    );
  }
}
