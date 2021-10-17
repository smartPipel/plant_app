class PlantData {
  final String? id, plantName, descriptions, plantType, image, latinName;

  PlantData(
      {this.id,
      this.plantName,
      this.descriptions,
      this.plantType,
      this.image,
      this.latinName});

  factory PlantData.fromJson(Map<String, dynamic> json) {
    return PlantData(
      id: json['id'],
      plantName: json['plantName'],
      descriptions: json['descriptions'],
      plantType: json['plantType'],
      image: json['image'],
      latinName: json['latinName'],
    );
  }
}
