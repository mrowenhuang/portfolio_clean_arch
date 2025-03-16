import 'package:flutter/material.dart';
import 'package:portfolio/core/configs/app_color.dart';
import 'package:portfolio/features/home/presentation/widgets/info_text.dart';

Widget animatedCodingIndicator(
  BuildContext context,
  String skills,
  double value,
  String percentage,
) {
  return TweenAnimationBuilder(
    duration: Duration(milliseconds: 1500),
    tween: Tween<double>(begin: 0, end: value),
    builder: (context, value, child) {
      return Column(
        children: [
          infoText(skills, percentage),
          SizedBox(height: 10),
          LinearProgressIndicator(
            color: Appcolor.primary,
            value: value,
            borderRadius: BorderRadius.circular(10),
          ),
        ],
      );
    },
  );
}
