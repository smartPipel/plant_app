import 'package:flutter/material.dart';
import 'package:myapp/business_logic/models/arguments.dart';
import 'package:myapp/ui/pages/detail_page.dart';
import 'package:myapp/ui/pages/home_page.dart';
import 'package:myapp/ui/pages/plant_detail_data_page.dart';
import 'package:myapp/ui/pages/splash_screen.dart';
import 'package:myapp/ui/routes/router_list.dart';

class RouterGenerator {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case routeHomeScreen:
        return MaterialPageRoute(builder: (_) => HomePage());
      case routeDetailScreen:
        final args = settings.arguments as Arguments;
        return MaterialPageRoute(
            builder: (_) => DetailPage(
                  title: args.title,
                ),
            settings: settings);
      case routeDetailDataScreen:
        final args = settings.arguments as Arguments;
        return MaterialPageRoute(
            builder: (_) => DetailDataPage(
                  id: args.id,
                  imageUrl: args.imageUrl,
                  descriptions: args.descriptions,
                  latinName: args.latinName,
                  plantType: args.plantType,
                  plantName: args.plantName,
                ),
            settings: settings);
      case routeSplashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      default:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}
