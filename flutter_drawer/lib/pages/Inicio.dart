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
              Image.network(
                'https://dl.dropboxusercontent.com/s/g3zvtjbg1glg6ym/Pintado%20de%20Takya1.jpg',
                width: 200,
                height: 200,
              ),
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
