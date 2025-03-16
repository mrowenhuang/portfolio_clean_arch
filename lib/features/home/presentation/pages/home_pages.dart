import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/configs/app_color.dart';
import 'package:portfolio/features/home/presentation/pages/side_pages.dart';
import 'package:portfolio/features/home/presentation/responsive.dart';
import 'package:portfolio/features/home/presentation/widgets/about_me.dart';
import 'package:portfolio/features/home/presentation/widgets/animated_indicator.dart';
import 'package:portfolio/features/home/presentation/widgets/animated_skills_indicator.dart';
import 'package:portfolio/features/home/presentation/widgets/github_project.dart';
import 'package:portfolio/features/home/presentation/widgets/info_text.dart';
import 'package:portfolio/features/home/presentation/widgets/regular_text.dart';
import 'package:portfolio/features/home/presentation/widgets/social_media.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);

    return Scaffold(
      backgroundColor: Appcolor.def,
      appBar:
          !Responsive.isDesktop(context)
              ? AppBar(
                leading: IconButton(
                  padding: EdgeInsets.only(left: 20),
                  onPressed: () {},
                  icon: Icon(Icons.menu, color: Appcolor.primary, size: 40),
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
                      ],
                    ),
                  ),
                )
                : SizedBox(),
            Expanded(
              flex: 8,
              child: Container(
                padding: EdgeInsets.only(
                  top: 50,
                  left: 100,
                  right: 100,
                  bottom: 20,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AnimatedTextKit(
                                  totalRepeatCount: 1000,
                                  animatedTexts: [
                                    TyperAnimatedText(
                                      "Building the future, one line of code at a time.",
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TyperAnimatedText(
                                      "Transforming challenges into opportunities.",
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TyperAnimatedText(
                                      "Code with passion, deliver with excellence.",
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 35),
                                Text(
                                  'Hi my name Owen Huang',
                                  style: TextStyle(
                                    fontSize: 46,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Mobile Developer',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black54,
                                  ),
                                ),
                                SizedBox(height: 40),
                                SizedBox(width: 600, child: Divider()),
                                SizedBox(height: 20),
                                SizedBox(
                                  width: 600,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      socialMedia(
                                        context,
                                        "https://github.com/mrowenhuang",
                                        "assets/icons/outline.png",
                                      ),
                                      SizedBox(width: 20),
                                      socialMedia(
                                        context,
                                        "https://www.linkedin.com/in/owen-huang-582b12213?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BGD7mkEOQSS%2BMe%2FV2ed8kMg%3D%3D",
                                        "assets/icons/linkedin.png",
                                      ),
                                      SizedBox(width: 20),
                                      socialMedia(
                                        context,
                                        "Commingsoon",
                                        "assets/icons/instagram.png",
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                SizedBox(width: 600, child: Divider()),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Row(
                              children: [
                                Spacer(),
                                Material(
                                  elevation: 10,
                                  borderRadius: BorderRadius.circular(300),
                                  child: CircleAvatar(
                                    maxRadius: 150,
                                    backgroundColor: Appcolor.def,
                                    backgroundImage: AssetImage(
                                      "assets/image/profile.png",
                                    ),
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          aboutMe(context),
                          Expanded(flex: 1, child: VerticalDivider()),
                          githubProject(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
