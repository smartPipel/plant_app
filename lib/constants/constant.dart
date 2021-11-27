import 'package:flutter/material.dart';

// URL

String baseUrl = 'https://plant-api.smartpipel.repl.co/';
String plantApi = '$baseUrl/api/plant';

// Devices size

double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

// Assets location

String iconAssets = "assets/icons/";
String imageAssets = "assets/images/";

// Data list
List<String> imageList = [
  imageAssets + "rice.png",
  imageAssets + "plantation.png",
  imageAssets + "plant.png",
  imageAssets + "gardening.png",
];

List<String> titleList = [
  "Palawija",
  "Horticultura",
  "Tanaman Hias",
  "Perkebunan"
];
