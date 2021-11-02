import 'package:flutter/material.dart';
import 'package:myapp/models/arguments.dart';
import 'package:myapp/models/plant_data_provider.dart';
import 'package:myapp/ui/pages/detail_page.dart';
import 'package:myapp/ui/pages/home_page.dart';
import 'package:myapp/ui/pages/plant_detail_data_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<PlantDataProvider>(
          create: (_) => PlantDataProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        title: "Plant",
        routes: {
          "/": (context) => HomePage(),
          "/detail": (context) => DetailPage(),
          '/detail_data': (context) => DetailDataPage(),
        },
        onGenerateRoute: (settings) {
          if (settings.name == '/detail') {
            final args = settings.arguments as Arguments;
            return MaterialPageRoute(
              builder: (context) {
                return DetailPage(
                  title: args.title,
                );
              },
            );
          } else if (settings.name == '/detail_data') {
            final args = settings.arguments as Arguments;
            return MaterialPageRoute(
              builder: (context) {
                return DetailDataPage(
                  id: args.id,
                  imageUrl: args.imageUrl,
                  descriptions: args.descriptions,
                  latinName: args.latinName,
                  plantType: args.plantType,
                  plantName: args.plantName,
                );
              },
            );
          }
        },
      ),
    ),
  );
}
