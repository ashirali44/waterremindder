import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:water_reminder1/src/constants/app_colors.dart';
import 'package:water_reminder1/src/widgets/common_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  CommonHeadingText(
                    text: 'Go for better',
                    size: 40,
                    color: Colors.orange,
                  ),
                  CommonHeadingText(
                    text: 'Drinking Habits',
                    size: 40,
                    color: Colors.white,
                  ),
                  CommonHeadingText(
                    text: 'With WOBBLE',
                    size: 40,
                    color: Colors.yellow,
                  ),
                ],
              ).marginOnly(left: 15, right: 15),
              SvgPicture.asset('assets/svgs/drink.svg')
            ]),
      ),
    );
  }
}
