import 'package:punk_api_flutter/utils/endpoints.dart';

class BeerModel {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final double abv;

  BeerModel({
    required this.id, 
    required this.name, 
    required this.description, 
    required this.imageUrl, 
    required this.abv});

    factory BeerModel.fromJson(Map<String,dynamic>json)  => 
      BeerModel(
        id: json['id'], 
        name: json['name'], 
        description: json['description'], 
        imageUrl: json['image_url'] ?? EndPoints.emptyImage, 
        abv: (json['abv'] as num).toDouble());
}