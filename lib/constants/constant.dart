import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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

// Define font name

TextStyle titleStyle = TextStyle(
  fontSize: 22,
  color: blackColor,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
);

TextStyle headerStyle = TextStyle(
  height: 1.3,
  fontSize: 20,
  color: blackColor,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
);

TextStyle subtitleStyle({HexColor? colors}) => TextStyle(
      fontSize: 16,
      color: colors ?? blackColor,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300,
    );
