import 'package:flutter/material.dart';

class Appcolor {
  static final Color primary = Color(0xff00A9FF);
  static final Color secondary = Color(0xffCDF5FD);
  static final Color def = Color(0xffffffff);

  // info :
  static final Gradient bg = LinearGradient(
    colors: [def, def, def, def, secondary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
