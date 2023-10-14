import 'package:flutter/material.dart';
import 'package:punk_api_flutter/infrastructure/models/beer_model.dart';

class BeerDetailScreen extends StatelessWidget {
  final BeerModel beer;
  const BeerDetailScreen({super.key, required this.beer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(beer.name),
      ),
      body: Card(elevation: 10,
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    beer.name,
                    style: const TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                      width: 300,
                      height: 300,
                      child: Image.network(beer.imageUrl)),
                      const SizedBox(height: 15),
                  Row(
                    children: [
                      Text('Graduation: ${beer.abv} %',
                      textAlign: TextAlign.start,
                      style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    beer.description,
                    style: const TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
