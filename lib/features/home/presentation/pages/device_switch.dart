import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/configs/app_color.dart';
import 'package:portfolio/features/home/presentation/responsive.dart';
import 'package:portfolio/features/home/presentation/widgets/about_me.dart';
import 'package:portfolio/features/home/presentation/widgets/github_project.dart';
import 'package:portfolio/features/home/presentation/widgets/social_media.dart';

class DeviceSwitch extends StatelessWidget {
  const DeviceSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return !Responsive.isDesktop(context)
        ? SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: AnimatedTextKit(
                  totalRepeatCount: 1000,
                  animatedTexts: [
                    TyperAnimatedText(
                      "Building the future, one line of code at a time.",
                      textStyle: TextStyle(
                        fontSize: !Responsive.isDesktop(context) ? 16 : 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TyperAnimatedText(
                      "Transforming challenges into opportunities.",
                      textStyle: TextStyle(
                        fontSize: !Responsive.isDesktop(context) ? 16 : 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TyperAnimatedText(
                      "Code with passion, deliver with excellence.",
                      textStyle: TextStyle(
                        fontSize: !Responsive.isDesktop(context) ? 16 : 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              !Responsive.isDesktop(context)
                  ? SizedBox()
                  : SizedBox(height: 35),
              Text(
                'Hi my name Owen Huang',
                style: TextStyle(
                  fontSize: !Responsive.isDesktop(context) ? 30 : 46,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Mobile Developer',
                style: TextStyle(
                  fontSize: !Responsive.isDesktop(context) ? 16 : 20,
                  color: Colors.black54,
                ),
              ),
              !Responsive.isDesktop(context)
                  ? SizedBox(height: 20)
                  : SizedBox(height: 40),
              SizedBox(width: 600, child: Divider()),
              SizedBox(height: 20),
              SizedBox(
                width: 600,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              SizedBox(height: 20),

              Align(
                alignment: Alignment.center,
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(300),
                  child: CircleAvatar(
                    maxRadius: 150,
                    backgroundColor: Appcolor.def,
                    backgroundImage: AssetImage("assets/image/profile.png"),
                  ),
                ),
              ),
              SizedBox(height: 30),
              aboutMe(context),
              SizedBox(height: 30),
              SizedBox(width: 600, child: Divider()),
              SizedBox(height: 30),
              githubProject(context),
            ],
          ),
        )
        : Expanded(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 60,
                            child: AnimatedTextKit(
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
                          ),

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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              SizedBox(height: 40),
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
        );
  }
}
