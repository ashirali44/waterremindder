import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:water_reminder1/src/constants/common_styles.dart';

import '../constants/app_colors.dart';

class WaterReminderRow extends StatelessWidget {
  const WaterReminderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(-0.8, -0.6),
          colors: [
            Color.fromRGBO(122, 169, 160, 1),
            Color.fromRGBO(68, 115, 106, 1)
          ],
          radius: 3,
        ),
        color: AppColors.primarygreenColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(children: [
        Expanded(
            child: Text(
          'Drink your first glass of today',
          style: AppStyles.CommonHeadingStyle.copyWith(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18),
        )),
        Image.asset(
          'assets/svgs/waterglass.png',
          height: 30,
        )
      ]).marginAll(15),
    );
  }
}
