import 'package:flutter/foundation.dart';
import 'package:myapp/models/plant_data.dart';

class PlantDataProvider with ChangeNotifier {
  List<PlantData> _plantData = [];

  List<PlantData> get getPlantData => _plantData;
}
