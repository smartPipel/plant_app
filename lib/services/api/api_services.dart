import 'package:dio/dio.dart';
import 'package:myapp/business_logic/models/plant_data.dart';
import 'package:myapp/constants/constant.dart';

class ApiServices {
  Dio dio = Dio();

  getAllPlant() async {
    Response res = await dio.get(
      '$plantApi',
    );
    if (res.statusCode == 200 && res.data != null) {
      var data = res.data;
      // var listData = data.map((e) => PlantData.fromJson(e)).toList();
      // Fluttertoast.showToast(msg: res.data['message']);
      PlantData plantData = PlantData.fromJson(data);
      print(data);
      return plantData;
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}
