import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

// BASE URL

String baseUrl = 'http://192.168.0.104:3000';
String plantApi = '$baseUrl/api/plant';

// Colors
HexColor primaryColor = HexColor("#28FFBF");
HexColor primaryLightColor = HexColor("#F6F6F6");
HexColor blackColor = HexColor("#2E3A59");
HexColor greyColor = HexColor("#EAEAEA");

// Devices size

double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

// Assets location

String iconAssets = "assets/icons/";
String imageAssets = "assets/images/";

// All about font

TextStyle titleStyle = GoogleFonts.poppins(
  fontSize: 20,
  color: blackColor,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
);

TextStyle headerStyle = GoogleFonts.poppins(
  height: 1.3,
  fontSize: 18,
  color: blackColor,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
);

TextStyle subtitleStyle({HexColor? colors}) => GoogleFonts.poppins(
      fontSize: 16,
      color: colors ?? blackColor,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300,
    );
