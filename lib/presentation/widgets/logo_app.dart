import 'package:flutter/material.dart';
import 'package:punk_api_flutter/utils/resources.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Align(
            alignment: Alignment.topCenter, 
            child: Image.asset(
              Resources.logoImage,
              height: 100,
              width: 100,
            ),
          ),
          const Padding(padding: EdgeInsets.all(5)),
          const Text(
            Resources.logoTitle,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),)
        ],
      );
  }
}