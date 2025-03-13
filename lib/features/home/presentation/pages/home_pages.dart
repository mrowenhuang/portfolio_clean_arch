import 'package:flutter/material.dart';
import 'package:portfolio/core/configs/app_color.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(backgroundColor: Colors.red),
      body: Container(
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
                    infoText("Age :", (DateTime.now().year - 2005).toString()),
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
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(children: [Row(children: [])]),
                ),
              ),
            ),
          ],
        ),
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
