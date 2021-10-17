import 'package:flutter/material.dart';
import 'package:myapp/models/arguments.dart';
import 'package:myapp/page/detail_page.dart';
import 'package:myapp/page/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    title: "Plant",
    routes: {
      "/": (context) => HomePage(),
      "/detail": (context) => DetailPage(),
    },
    onGenerateRoute: (settings) {
      if (settings.name == '/detail') {
        final args = settings.arguments as Arguments;
        return MaterialPageRoute(builder: (context) {
          return DetailPage(
            title: args.title,
          );
        });
      }
    },
  ));
}
