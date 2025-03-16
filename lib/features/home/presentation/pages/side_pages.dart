import 'package:flutter/material.dart';
import 'package:portfolio/core/configs/app_color.dart';
import 'package:portfolio/features/home/presentation/responsive.dart';
import 'package:portfolio/features/home/presentation/widgets/animated_indicator.dart';
import 'package:portfolio/features/home/presentation/widgets/animated_skills_indicator.dart';
import 'package:portfolio/features/home/presentation/widgets/info_text.dart';
import 'package:portfolio/features/home/presentation/widgets/regular_text.dart';

class SidePages extends StatelessWidget {
  const SidePages({super.key});

  @override
  Widget build(BuildContext context) {
    return !!Responsive.isDesktop(context)
        ? Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Appcolor.secondary,
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 10,
                  offset: Offset(2, 3),
                ),
              ],
            ),
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(100),
                    child: CircleAvatar(
                      maxRadius: 60,
                      backgroundImage: AssetImage("assets/image/profile2.jpeg"),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: regularText("Owen Huang"),
                ),
                SizedBox(height: 12),
                Divider(thickness: 2),
                SizedBox(height: 20),
                infoText("Residence :", "Indonesia"),
                SizedBox(height: 10),
                infoText("City :", "Medan"),
                SizedBox(height: 10),
                infoText("Age :", (DateTime.now().year - 2005).toString()),
                SizedBox(height: 10),
                infoText("Email :", "williamowenwijaya191204@gmail.com"),
                SizedBox(height: 10),
                infoText("Another Skills :", "Bug Bounty | Machine Learning"),
                SizedBox(height: 30),
                regularText("Skills"),
                SizedBox(height: 12),
                Divider(thickness: 2),
                SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10),
                    animatedSkillsIndicator(context, "Flutter", .8, "80%"),
                    const SizedBox(width: 20),
                    animatedSkillsIndicator(context, "React Native", .4, "40%"),
                    const SizedBox(width: 20),
                    animatedSkillsIndicator(context, "Firebase", .6, "60%"),
                    const SizedBox(width: 10),
                  ],
                ),
                SizedBox(height: 30),
                regularText("Coding"),
                SizedBox(height: 12),
                Divider(thickness: 2),
                SizedBox(height: 12),
                Column(
                  children: [
                    animatedCodingIndicator(context, "Dart", .8, "80%"),
                    const SizedBox(height: 10),
                    animatedCodingIndicator(context, "Java Script", .6, "60%"),
                    const SizedBox(height: 10),
                    animatedCodingIndicator(context, "HTML", .6, "60%"),
                    const SizedBox(height: 10),
                    animatedCodingIndicator(context, "CSS", .6, "60%"),
                    const SizedBox(height: 10),
                    animatedCodingIndicator(context, "PHP", .6, "60%"),
                  ],
                ),
              ],
            ),
          ),
        )
        : Drawer(
          backgroundColor: Appcolor.secondary,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(100),
                    child: CircleAvatar(
                      maxRadius: 60,
                      backgroundImage: AssetImage("assets/image/profile2.jpeg"),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: regularText("Owen Huang"),
                ),
                SizedBox(height: 12),
                Divider(thickness: 2),
                SizedBox(height: 20),
                infoText("Residence :", "Indonesia"),
                SizedBox(height: 10),
                infoText("City :", "Medan"),
                SizedBox(height: 10),
                infoText("Age :", (DateTime.now().year - 2005).toString()),
                SizedBox(height: 10),
                infoText("Email :", "williamowenwijaya191204@gmail.com"),
                SizedBox(height: 10),
                infoText("Another Skills :", "Bug Bounty | Machine Learning"),
                SizedBox(height: 30),
                regularText("Skills"),
                SizedBox(height: 12),
                Divider(thickness: 2),
                SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10),
                    animatedSkillsIndicator(context, "Flutter", .8, "80%"),
                    const SizedBox(width: 20),
                    animatedSkillsIndicator(context, "React Native", .4, "40%"),
                    const SizedBox(width: 20),
                    animatedSkillsIndicator(context, "Firebase", .6, "60%"),
                    const SizedBox(width: 10),
                  ],
                ),
                SizedBox(height: 30),
                regularText("Coding"),
                SizedBox(height: 12),
                Divider(thickness: 2),
                SizedBox(height: 12),
                Column(
                  children: [
                    animatedCodingIndicator(context, "Dart", .8, "80%"),
                    const SizedBox(height: 10),
                    animatedCodingIndicator(context, "Java Script", .6, "60%"),
                    const SizedBox(height: 10),
                    animatedCodingIndicator(context, "HTML", .6, "60%"),
                    const SizedBox(height: 10),
                    animatedCodingIndicator(context, "CSS", .6, "60%"),
                    const SizedBox(height: 10),
                    animatedCodingIndicator(context, "PHP", .6, "60%"),
                  ],
                ),
              ],
            ),
          ),
        );
  }
}
