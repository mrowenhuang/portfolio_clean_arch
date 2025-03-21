import 'package:flutter/material.dart';

// We will modify it once we have our final design

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget desktop;
  final Widget laptop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
    this.mobileLarge,
    required this.laptop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 700;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024;

  static bool isLaptop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1400;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1400) {
      print("desktop");
      return desktop;
    } else if (_size.width >= 1024) {
      print('laptop');
      return laptop;
    } else if (_size.width >= 700 && tablet != null) {
      print("tablet");
      return tablet!;
    } else if (_size.width >= 500 && mobileLarge != null) {
      print("mobileLarge");
      return mobileLarge!;
    } else {
      return mobile;
    }
  }
}
