import 'package:flutter/widgets.dart';
import 'package:portfolio/features/home/presentation/responsive.dart';

Widget aboutMe(BuildContext context) {
  return Responsive.isMobile(context) ||
          Responsive.isMobileLarge(context) ||
          Responsive.isTablet(context)
      ? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Me",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 20),
          Wrap(
            children: [
              Text(
                "Hi, I'm Owen Huang! I have a strong passion for coding and love building mobile applications. My main focus is on Flutter development, where I create smooth and responsive Android apps. I enjoy solving challenges, optimizing performance, and delivering great user experiences. To expand my skills as a mobile developer, I’m also learning React Native, allowing me to explore different frameworks and improve my versatility.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          SizedBox(height: 20),
          Wrap(
            children: [
              Text(
                "For now, my development is primarily focused on Android due to limited access to iOS devices and tools. However, I’m continuously learning and preparing myself to work on iOS development in the future. I believe that staying adaptable and constantly improving is the key to growing as a developer.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ],
      )
      : Expanded(
        flex: 4,
        child: ListView(
          children: [
            Text(
              "About Me",
              style: TextStyle(
                fontSize: !Responsive.isDesktop(context) ? 20 : 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),
            Wrap(
              children: [
                Text(
                  "Hi, I'm Owen Huang! I have a strong passion for coding and love building mobile applications. My main focus is on Flutter development, where I create smooth and responsive Android apps. I enjoy solving challenges, optimizing performance, and delivering great user experiences. To expand my skills as a mobile developer, I’m also learning React Native, allowing me to explore different frameworks and improve my versatility.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: !Responsive.isDesktop(context) ? 14 : 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Wrap(
              children: [
                Text(
                  "For now, my development is primarily focused on Android due to limited access to iOS devices and tools. However, I’m continuously learning and preparing myself to work on iOS development in the future. I believe that staying adaptable and constantly improving is the key to growing as a developer.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: !Responsive.isDesktop(context) ? 14 : 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
