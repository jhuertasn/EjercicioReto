import 'package:flutter/material.dart';

class Chefs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Chefs",
            style: TextStyle(fontFamily: 'Marker', fontSize: 30),
          ),
          Text(
            "Jordan Huertas Negron",
            style: TextStyle(fontFamily: 'Marker', fontSize: 25),
          ),
          Text(
            "Sabrina Oroya Sanchez",
            style: TextStyle(fontFamily: 'Marker', fontSize: 25),
          ),
          Text(
            "Alejandro Obregon Pajuelo",
            style: TextStyle(fontFamily: 'Marker', fontSize: 25),
          ),
          Text(
            "Sebastian Crispin Manrique",
            style: TextStyle(fontFamily: 'Marker', fontSize: 25),
          ),
        ],
      ),
    );
  }
}
