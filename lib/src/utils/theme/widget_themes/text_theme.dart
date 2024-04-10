import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline2: GoogleFonts.montserrat(
      color: Colors.black87,
      fontWeight: FontWeight.normal, // Set font weight to normal (non-bold)
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    headline2: GoogleFonts.montserrat(
      color: Colors.black87,
      fontWeight: FontWeight.bold, // Set font weight to bold
    ),
  );
}
