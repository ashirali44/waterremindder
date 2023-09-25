import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:water_reminder1/src/constants/app_colors.dart';
import 'package:water_reminder1/src/constants/common_styles.dart';

class CommonAppButton extends StatelessWidget {
  final String textButton;
  final Function onTap;
  const CommonAppButton(
      {Key? key, required this.textButton, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: AppColors.primaryColor,
          ),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    'assets/svgs/bg.svg',
                    fit: BoxFit.cover,
                    // Replace with your SVG file path
                    color: Colors
                        .white, // Set the SVG color to match the text color
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(this.textButton,
                        style: AppStyles.CommonHeadingStyle2.copyWith(
                            color: Colors.white, fontSize: 18)),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
