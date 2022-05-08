import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  //enlazando al main.dart
  static const String ruta = "/texfield";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MicajadeTexto(title: 'TextField Takya.inc'),
    );
  }
}

class MicajadeTexto extends StatefulWidget {
  const MicajadeTexto({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MicajadeTexto> createState() => _MicajadeTexto();
}

class _MicajadeTexto extends State<MicajadeTexto> {
  String valorInput = '';
  final controllertext = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration:
                  const InputDecoration(hintText: "Ingrese el texto aquí"),
              onSubmitted: (String valortext) {
                cambiar(valortext);
              },
              controller: controllertext,
            ),
            Text(
              valorInput,
              //agregando estilo y tamaño a la caja de texto
              style: TextStyle(fontFamily: 'Marker', fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }

  void cambiar(String valortext) {
    // ignore: avoid_print
    setState(() {
      valorInput = valorInput + '\n' + valortext;
      controllertext.text = '';
    });
  }
}
