import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  static var colorDark = const Color(0XFFf99c10);
  static var colorLight = const Color(0XFFd9dd1b);
  static var colorYellow = Colors.yellow;

  static var tsbw14 = GoogleFonts.changaOne(
    color: Colors.white,
    fontSize: 14,
  );

  static var tsbw16 = GoogleFonts.changaOne(
    color: Colors.white,
    fontSize: 16,
  );

  static var tsbw22 = GoogleFonts.changaOne(
    color: Colors.white,
    fontSize: 22,
  );

  static var tsbw28 = GoogleFonts.changaOne(
    color: Colors.white,
    fontSize: 28,
  );

  static var tsbb14 = GoogleFonts.changaOne(
    color: Colors.black,
    fontSize: 14,
  );

  static var tsbb16 = GoogleFonts.changaOne(
    color: Colors.black,
    fontSize: 16,
  );

  static var tsbb22 = GoogleFonts.changaOne(
    color: Colors.black,
    fontSize: 22,
  );

  static var tsbb28 = GoogleFonts.changaOne(
    color: Colors.black,
    fontSize: 28,
  );

  static var tsbw30 = GoogleFonts.changaOne(
    color: Colors.white,
    fontSize: 30,
  );

  static var tsbd12 = GoogleFonts.changaOne(
    color: colorDark,
    fontSize: 12,
  );

  static var tsbd14 = GoogleFonts.changaOne(
    color: colorDark,
    fontSize: 14,
  );

  static var tsbd16 = GoogleFonts.changaOne(
    color: colorDark,
    fontSize: 16,
  );

  static void showSnackBar(String title, bool error, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: error ? Colors.red : colorDark,
        content: Text(
          title,
          style: tsbw16,
        ),
      ),
    );
  }
}
