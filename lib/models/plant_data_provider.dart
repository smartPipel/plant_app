import 'package:flutter/foundation.dart';
import 'package:myapp/Services/api_services.dart';
import 'package:myapp/models/plant_data.dart';

class PlantDataProvider with ChangeNotifier {
  PlantData? plantData;
  bool isLoading = true;

  getPlantData() async {
    isLoading = true;
    plantData = await ApiServices().getAllPlant();
    isLoading = false;
    notifyListeners();
    print(plantData!.dataLength.toString());
    // return plantData;
  }
}
