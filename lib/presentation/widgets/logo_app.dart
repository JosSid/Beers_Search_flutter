import 'package:flutter/material.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Align(
            alignment: Alignment.topCenter, // Alinea en la parte superior y al centro horizontal
            child: Image.asset(
              'assets/beer.png',
              height: 100,
              width: 100,
            ),
          ),
          const Padding(padding: EdgeInsets.all(5)),
          const Text(
            'Your Favorite Beer',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),)
        ],
      );
  }
}