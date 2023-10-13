import 'package:flutter/material.dart';
import 'package:punk_api_flutter/config/helpers/get_beers.dart';
import 'package:punk_api_flutter/infrastructure/models/beer_model.dart';

class BeersListProvider extends ChangeNotifier {

  final getBeers = GetBeers();
  String searchValue = '';

  List<BeerModel> _beerList = [];

  List<BeerModel> beerList = [];

  BeersListProvider() {
    initializeBeersList(); // Llama al método de inicialización en el constructor
  }

  void onValueChange(String value) {
    searchValue = value;
    beerList = _beerList.where((beer) => beer.name.toLowerCase().contains(searchValue.toLowerCase())).toList();
    notifyListeners();
  }

  Future<void>setBeersList() async {
    try{
      beerList = await getBeers.getListBeers();
      notifyListeners();
    }catch(err){
      // ignore: avoid_print
      print(err.toString());
    }
  }
  
  Future<void> initializeBeersList() async {
    try {
      _beerList = await getBeers.getListBeers();
      beerList = _beerList;
      notifyListeners();
    } catch (err) {
      // Manejar errores aquí
      print(err.toString());
    }
  }


}