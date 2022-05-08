import 'package:flutter/material.dart';

class paginaInicial extends StatefulWidget {
  @override
  _paginaInicialState createState() => _paginaInicialState();
}

class _paginaInicialState extends State<paginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Hola",
            style: TextStyle(fontFamily: 'Marker', fontSize: 25),
          ),
          Container(
            child: Column(children: [
              Image.asset('images/Kediko.png'),
              Icon(Icons.home, size: 170.0, color: Colors.orange),
              Text(
                "Bienvenido a TakyaINC",
                style: TextStyle(fontFamily: 'Marker', fontSize: 25),
              )
            ]),
          )
        ],
      ),
    ));
  }
}
