import 'package:flutter/material.dart';
import 'package:portfolio/core/configs/app_color.dart';

Widget animatedSkillsIndicator(
  BuildContext context,
  String skills,
  double value,
  String percentage,
) {
  return Expanded(
    child: Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            duration: Duration(milliseconds: 1500),
            tween: Tween<double>(begin: 0, end: value),
            builder: (context, value, child) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    strokeWidth: 5,
                    value: value,
                    color: Appcolor.primary,
                  ),
                  Center(
                    child: Text(percentage, style: TextStyle(fontSize: 12)),
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(height: 5),
        Text(
          skills,
          style: TextStyle(fontSize: 13),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
