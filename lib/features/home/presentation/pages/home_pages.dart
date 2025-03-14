import 'package:flutter/material.dart';
import 'package:portfolio/core/configs/app_color.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(backgroundColor: Colors.red),
      body: Container(
        decoration: BoxDecoration(gradient: Appcolor.bg),
        constraints: BoxConstraints(maxWidth: double.infinity),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              // child: Drawer(
              //   backgroundColor: Colors.red,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.only(
              //       topRight: Radius.circular(40),
              //       bottomRight: Radius.circular(40),
              //     ),
              //   ),
              //   elevation: 10,
              //   shadowColor: Colors.yellow,
              // ),
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
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Material(
                          elevation: 8,
                          borderRadius: BorderRadius.circular(100),
                          child: CircleAvatar(
                            maxRadius: 60,
                            backgroundColor: Colors.grey.shade300,
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
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                padding: EdgeInsets.only(top: 100, right: 50),

                child: Column(children: [Row(children: [])]),
              ),
            ),
          ],
        ),
      ),
    );
  }

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

  Widget regularText(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    );
  }

  Widget infoText(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 13)),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
