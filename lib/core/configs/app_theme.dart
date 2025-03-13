import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      useMaterial3: false,
      fontFamily: GoogleFonts.montserratAlternates().fontFamily,
    );
  }
}
