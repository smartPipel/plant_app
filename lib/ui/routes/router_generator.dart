import 'package:flutter/material.dart';
import 'package:myapp/models/arguments.dart';
import 'package:myapp/ui/pages/detail_page.dart';
import 'package:myapp/ui/pages/home_page.dart';
import 'package:myapp/ui/pages/plant_detail_data_page.dart';
import 'package:myapp/ui/routes/router_list.dart';

class RouterGenerator {
  static Route<dynamic>? generate(RouteSettings settings) {
    final args = settings.arguments as Arguments;

    switch (settings.name) {
      case routeHomeScreen:
        return MaterialPageRoute(builder: (context) => HomePage());
      case routeDetailScreen:
        return MaterialPageRoute(
            builder: (context) => DetailPage(
                  title: args.title,
                ));
      case routeDetailDataScreen:
        return MaterialPageRoute(
            builder: (context) => DetailDataPage(
                  id: args.id,
                  imageUrl: args.imageUrl,
                  descriptions: args.descriptions,
                  latinName: args.latinName,
                  plantType: args.plantType,
                  plantName: args.plantName,
                ));
      default:
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}
