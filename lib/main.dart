import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/business_logic/view_models/plant_data_provider.dart';
import 'package:myapp/ui/pages/splash_screen.dart';
import 'package:myapp/ui/routes/router_generator.dart';
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
        home: SplashScreen(),
        title: "Plant",
        onGenerateRoute: RouterGenerator.generate,
      ),
    ),
  );
}
