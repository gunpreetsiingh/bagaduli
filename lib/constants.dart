import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  static var colorDark = const Color(0XFF882e2c);
  static var colorLight = const Color(0XFFff0000);
  // static var colorYellow = Colors.yellow;
  static var colorGolden = const Color(0XFFffe455);

  static var tsbg14 = GoogleFonts.openSans(
    color: colorGolden,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  static var tsbg22 = GoogleFonts.openSans(
    color: colorGolden,
    fontWeight: FontWeight.bold,
    fontSize: 22,
  );

  static var tsbg28 = GoogleFonts.openSans(
    color: colorGolden,
    fontWeight: FontWeight.bold,
    fontSize: 28,
  );

  static var tsbw14 = GoogleFonts.openSans(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  static var tsbw16 = GoogleFonts.openSans(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static var tsbw22 = GoogleFonts.openSans(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 22,
  );

  static var tsbw28 = GoogleFonts.openSans(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 28,
  );

  static var tsbb14 = GoogleFonts.openSans(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  static var tsbb16 = GoogleFonts.openSans(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static var tsbb22 = GoogleFonts.openSans(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 22,
  );

  static var tsbb28 = GoogleFonts.openSans(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 28,
  );

  static var tsbw30 = GoogleFonts.openSans(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 30,
  );

  static var tsbwaladin30 = GoogleFonts.aladin(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 36,
  );

  static var tsbd12 = GoogleFonts.openSans(
    color: colorDark,
    fontWeight: FontWeight.bold,
    fontSize: 12,
  );

  static var tsbd14 = GoogleFonts.openSans(
    color: colorDark,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  static var tsbd16 = GoogleFonts.openSans(
    color: colorDark,
    fontWeight: FontWeight.bold,
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
