import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:water_reminder1/src/constants/app_colors.dart';
import 'package:water_reminder1/src/widgets/common_text.dart';
import 'package:water_reminder1/src/widgets/screens_header_text.dart';
import 'package:get/get.dart';
import 'package:water_reminder1/src/widgets/water_remindder.dart';

class DetailDashboard extends StatefulWidget {
  const DetailDashboard({super.key});

  @override
  State<DetailDashboard> createState() => _DetailDashboardState();
}

class _DetailDashboardState extends State<DetailDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ScreenHeaderText(
                text: 'Hey,  Umar',
              ),
              const SizedBox(
                height: 10,
              ),
              TargetBox(),
              const SizedBox(
                height: 15,
              ),
              TakeBox(),
              const SizedBox(
                height: 25,
              ),
              const WaterReminderRow(),
              const SizedBox(
                height: 10,
              ),
              StatsBox(),
              SizedBox(
                height: 200,
              )
            ],
          )).marginOnly(left: 15, right: 15, top: 40),
    );
  }

  Widget StatsBox() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: AppColors.lightPrimaryColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonHeadingText(
                    text: 'BMI',
                    size: 16,
                  ),
                  SizedBox(
                    height: 05,
                  ),
                  const ScreenHeaderText(
                    text: '24.6',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CommonHeadingText(
                    text: 'Weight',
                    size: 16,
                  ),
                  SizedBox(
                    height: 05,
                  ),
                  const ScreenHeaderText(
                    text: '75',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CommonHeadingText(
                    text: 'Height(cm)',
                    size: 16,
                  ),
                  SizedBox(
                    height: 05,
                  ),
                  const ScreenHeaderText(
                    text: '175',
                  ),
                ]),
          )),
          const SizedBox(
            width: 15,
          ),
          Expanded(
              child: Container(
            child: Column(
              children: [
                Container(
                  width: Get.width,
                  padding: EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: AppColors.primarygreenColorlight,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonHeadingText(
                          text: 'BMI',
                          size: 16,
                        ),
                        SizedBox(
                          height: 05,
                        ),
                        const ScreenHeaderText(
                          text: '24.6',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CommonHeadingText(
                          text: 'Weight',
                          size: 16,
                        ),
                        SizedBox(
                          height: 05,
                        ),
                        const ScreenHeaderText(
                          text: '75',
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: Get.width,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Colors.grey.withOpacity(.3)),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonHeadingText(
                          text: 'BMI',
                          size: 16,
                        ),
                        SizedBox(
                          height: 05,
                        ),
                        const ScreenHeaderText(
                          text: '24.6',
                        ),
                      ]),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget TakeBox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonHeading2(
              text: 'Next take in',
            ),
            SizedBox(
              height: 10,
            ),
            ScreenHeaderText(
              text: '1h 48m',
            ),
          ],
        ),
        Container(
          width: 90,
          height: 90,
          decoration:
              const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
          child: const Center(
              child: CommonHeadingText(
            text: 'Take',
            color: Colors.white,
          )),
        )
      ],
    );
  }

  Widget TargetBox() {
    return Container(
      width: Get.width,
      height: 150,
      decoration: BoxDecoration(
          color: AppColors.lightPrimaryColor.withOpacity(.5),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          border: Border.all(width: 1, color: AppColors.primaryBoldColor)),
      child: Row(children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CommonHeadingText(text: 'Target: 12 Glass'),
                  const SizedBox(
                    width: 15,
                  ),
                  SvgPicture.asset(
                    'assets/svgs/target.svg',
                    height: 18,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CommonHeadingText(text: 'Tip of the day'),
                      const SizedBox(
                        width: 15,
                      ),
                      SvgPicture.asset(
                        'assets/svgs/tip.svg',
                        height: 15,
                      )
                    ],
                  ),
                  const CommonDescription(
                      text: 'Study shows don’t take 2 cup of coffee a day'),
                ],
              )
            ],
          ),
        ),
        Container(
          width: 100,
        )
      ]).marginAll(15),
    );
  }
}
