import 'package:flutter/foundation.dart';
import 'package:myapp/business_logic/models/plant_data.dart';
import 'package:myapp/services/api/api_services.dart';

class PlantDataProvider with ChangeNotifier {
  PlantData? plantData;
  bool loading = false;

  getPlantData() async {
    setLoading(true);
    plantData = await ApiServices().getAllPlant();
    setLoading(false);
    notifyListeners();
    print(plantData!.dataLength.toString());
    // return plantData;
  }

  bool isLoading() {
    return loading;
  }

  void setLoading(value) {
    loading = value;
    notifyListeners();
  }
}
