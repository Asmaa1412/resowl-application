import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResowlTextTheme {
  static TextTheme blackText = TextTheme(
    bodyLarge: GoogleFonts.gentiumBasic(fontSize: 40),
    bodyMedium: GoogleFonts.gentiumBasic(fontSize: 36),
    bodySmall: GoogleFonts.gentiumBasic(fontSize: 20),
  );

  static TextTheme whiteText = TextTheme(
    bodyLarge: GoogleFonts.gentiumBasic(fontSize: 40, color: Colors.white),
    bodyMedium: GoogleFonts.gentiumBasic(fontSize: 36, color: Colors.white),
    bodySmall: GoogleFonts.gentiumBasic(fontSize: 20, color: Colors.white),
  );
  static TextTheme trquoiseText = TextTheme(
    bodyLarge: GoogleFonts.gentiumBasic(
      fontSize: 40,
      color: Color.fromARGB(255, 0, 91, 97),
    ),
    bodyMedium: GoogleFonts.gentiumBasic(
      fontSize: 36,
      color: Color.fromARGB(255, 0, 91, 97),
    ),
    bodySmall: GoogleFonts.gentiumBasic(
      fontSize: 20,
      color: Color.fromARGB(255, 0, 91, 97),
    ),
  );
}
