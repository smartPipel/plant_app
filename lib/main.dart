import 'package:flutter/material.dart';
import 'package:myapp/page/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    title: "Plant",
    routes: {
      "/": (context) => HomePage(),
    },
  ));
}
