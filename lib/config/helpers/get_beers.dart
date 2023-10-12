import 'package:dio/dio.dart';
import 'package:punk_api_flutter/domain/entities/beer.dart';
import 'package:punk_api_flutter/infrastructure/models/beer_model.dart';

class GetBeers {
  final dio = Dio();

  Future<List<BeerModel>> getListBeers() async {
    final response = await dio.get('https://api.punkapi.com/v2/beers');
    final List<dynamic> jsonList = response.data;
    final List<BeerModel> beerList = jsonList.map((beer) => BeerModel.fromJson(beer)).toList();
    return beerList;
  }
}


