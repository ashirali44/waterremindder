import 'package:flutter/material.dart';
import 'package:water_reminder1/src/constants/common_styles.dart';

class CommonHeadingText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  const CommonHeadingText(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.size = 20});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.CommonHeadingStyle.copyWith(
          color: this.color, fontSize: this.size),
    );
  }
}

class CommonDescription extends StatelessWidget {
  final String text;
  const CommonDescription({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.DescriptionStyles,
    );
  }
}

class CommonHeading2 extends StatelessWidget {
  final String text;
  const CommonHeading2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.CommonHeadingStyle2,
    );
  }
}
