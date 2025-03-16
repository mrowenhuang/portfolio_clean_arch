import 'package:flutter/material.dart';
import 'package:portfolio/core/configs/app_color.dart';
import 'package:portfolio/features/home/presentation/pages/device_switch.dart';
import 'package:portfolio/features/home/presentation/responsive.dart';
import 'package:portfolio/features/home/presentation/widgets/animated_indicator.dart';
import 'package:portfolio/features/home/presentation/widgets/animated_skills_indicator.dart';
import 'package:portfolio/features/home/presentation/widgets/info_text.dart';
import 'package:portfolio/features/home/presentation/widgets/regular_text.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> key = GlobalKey();
    return Scaffold(
      key: key,
      backgroundColor: Appcolor.def,
      appBar:
          !Responsive.isDesktop(context)
              ? AppBar(
                leading: IconButton(
                  onPressed: () {
                    key.currentState!.openDrawer();
                  },
                  icon: Icon(Icons.menu, color: Colors.black, size: 40),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
              )
              : null,
      drawer:
          !Responsive.isDesktop(context)
              ? Drawer(
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
                            backgroundImage: AssetImage(
                              "assets/image/profile2.jpeg",
                            ),
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
                      infoText(
                        "Age :",
                        (DateTime.now().year - 2005).toString(),
                      ),
                      SizedBox(height: 10),
                      infoText("Email :", "williamowenwijaya191204@gmail.com"),
                      SizedBox(height: 10),
                      infoText(
                        "Another Skills :",
                        "Bug Bounty | Machine Learning",
                      ),
                      SizedBox(height: 30),
                      regularText("Skills"),
                      SizedBox(height: 12),
                      Divider(thickness: 2),
                      SizedBox(height: 12),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(width: 10),
                          animatedSkillsIndicator(
                            context,
                            "Flutter",
                            .8,
                            "80%",
                          ),
                          const SizedBox(width: 20),
                          animatedSkillsIndicator(
                            context,
                            "React Native",
                            .4,
                            "40%",
                          ),
                          const SizedBox(width: 20),
                          animatedSkillsIndicator(
                            context,
                            "Firebase",
                            .6,
                            "60%",
                          ),
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
                          animatedCodingIndicator(
                            context,
                            "Java Script",
                            .6,
                            "60%",
                          ),
                          const SizedBox(height: 10),
                          animatedCodingIndicator(context, "HTML", .6, "60%"),
                          const SizedBox(height: 10),
                          animatedCodingIndicator(context, "CSS", .6, "60%"),
                          const SizedBox(height: 10),
                          animatedCodingIndicator(context, "PHP", .6, "60%"),
                        ],
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 25),
                          backgroundColor: Appcolor.primary,
                        ),
                        child: Text(
                          "Download CV",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
              : null,
      body: Container(
        decoration: BoxDecoration(gradient: Appcolor.bg),
        constraints: BoxConstraints(maxWidth: double.infinity),
        child: Row(
          children: [
            Responsive.isDesktop(context)
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
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Material(
                            elevation: 8,
                            borderRadius: BorderRadius.circular(100),
                            child: CircleAvatar(
                              maxRadius: 60,
                              backgroundImage: AssetImage(
                                "assets/image/profile2.jpeg",
                              ),
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
                        infoText(
                          "Age :",
                          (DateTime.now().year - 2005).toString(),
                        ),
                        SizedBox(height: 10),
                        infoText(
                          "Email :",
                          "williamowenwijaya191204@gmail.com",
                        ),
                        SizedBox(height: 10),
                        infoText(
                          "Another Skills :",
                          "Bug Bounty | Machine Learning",
                        ),
                        SizedBox(height: 30),
                        regularText("Skills"),
                        SizedBox(height: 12),
                        Divider(thickness: 2),
                        SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 10),
                            animatedSkillsIndicator(
                              context,
                              "Flutter",
                              .8,
                              "80%",
                            ),
                            const SizedBox(width: 20),
                            animatedSkillsIndicator(
                              context,
                              "React Native",
                              .4,
                              "40%",
                            ),
                            const SizedBox(width: 20),
                            animatedSkillsIndicator(
                              context,
                              "Firebase",
                              .6,
                              "60%",
                            ),
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
                            animatedCodingIndicator(
                              context,
                              "Java Script",
                              .6,
                              "60%",
                            ),
                            const SizedBox(height: 10),
                            animatedCodingIndicator(context, "HTML", .6, "60%"),
                            const SizedBox(height: 10),
                            animatedCodingIndicator(context, "CSS", .6, "60%"),
                            const SizedBox(height: 10),
                            animatedCodingIndicator(context, "PHP", .6, "60%"),
                          ],
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 25),
                            backgroundColor: Appcolor.primary,
                          ),
                          child: Text(
                            "Download CV",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                : SizedBox(),
            Expanded(
              flex: 8,
              child: Container(
                padding:
                    !Responsive.isDesktop(context)
                        ? EdgeInsets.all(20)
                        : EdgeInsets.only(
                          top: 50,
                          left: 100,
                          right: 100,
                          bottom: 20,
                        ),
                child: DeviceSwitch(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
