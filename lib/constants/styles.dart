import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// The constant
double rounded() => 20;
double subRounded() => 15;
double margin() => 15;
double padding() => 10;

Color lightColor() => Color(0xFFF6F6F6);
Color darkColor() => Color(0xFF2E3A59);
Color greenColor() => Color(0xFF28FFBF);
Color greyColor() => Color(0xFFEAEAEA);

// Style

TextStyle titleStyle = GoogleFonts.poppins(
  fontSize: 20,
  color: darkColor(),
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
);

TextStyle headerStyle = GoogleFonts.poppins(
  height: 1.3,
  fontSize: 18,
  color: darkColor(),
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
);

TextStyle subtitleStyle({Color? colors}) => GoogleFonts.poppins(
      fontSize: 16,
      color: colors ?? darkColor(),
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300,
    );
