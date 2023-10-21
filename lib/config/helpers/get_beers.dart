import 'package:dio/dio.dart';
import 'package:punk_api_flutter/config/client/http_client.dart';
import 'package:punk_api_flutter/infrastructure/models/beer_model.dart';
import 'package:punk_api_flutter/utils/endpoints.dart';

class GetBeers {

  final Dio client = HttpClient().getClient();

  Future<List<BeerModel>> getListBeers() async {
    final response = await client.get(EndPoints.punkApiUrl);
    final List<dynamic> jsonList = response.data;
    final List<BeerModel> beerList = jsonList.map((beer) => BeerModel.fromJson(beer)).toList();
    return beerList;
  }
}


