import 'package:flutter/material.dart';
import 'package:myapp/models/plant_data_provider.dart';
import 'package:myapp/ui/routes/router_generator.dart';
import 'package:myapp/ui/routes/router_list.dart';
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
        initialRoute: routeHomeScreen,
        title: "Plant",
        onGenerateRoute: RouterGenerator.generate,
      ),
    ),
  );
}
