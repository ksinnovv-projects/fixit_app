import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
//   FontWeight.w100: 'Thin',
//   FontWeight.w200: 'ExtraLight',
//   FontWeight.w300: 'Light',
//   FontWeight.w400: 'Regular',
//   FontWeight.w500: 'Medium',
//   FontWeight.w600: 'SemiBold',
//   FontWeight.w700: 'Bold',
//   FontWeight.w800: 'ExtraBold',
//   FontWeight.w900: 'Black',
//

static TextStyle dmSans8Regular() {
    return GoogleFonts.dmSans(
      fontWeight: FontWeight.w400,
      fontSize: 8,
    );
  }


  static TextStyle dmSans20Bold() {
    return GoogleFonts.dmSans(
      fontWeight: FontWeight.w700,
      fontSize: 20,
    );
  }

   static TextStyle dmSans12Bold() {
    return GoogleFonts.dmSans(
      fontWeight: FontWeight.w700,
      fontSize: 12,
    );
  }

  static TextStyle dmSans14Regular() {
    return GoogleFonts.dmSans(
      fontWeight: FontWeight.w400,
      fontSize: 20,
    );
  }

  static TextStyle dmSans32Bold() {
    return GoogleFonts.dmSans(
      fontWeight: FontWeight.w700,
      fontSize: 32,
    );
  }

  static TextStyle roboto12Regular() {
    return GoogleFonts.roboto(
      fontWeight: FontWeight.w400,
      fontSize: 12,
    );
  }

  static TextStyle roboto16SemiBold() {
    return GoogleFonts.roboto(
      fontWeight: FontWeight.w600,
      fontSize: 16,
    );
  }
}
