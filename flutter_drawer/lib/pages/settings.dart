import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static const String ruta = "/Settings";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configuraciones"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Column(children: [
                Icon(Icons.settings, size: 170.0, color: Colors.grey),
                Text("Página de configuraciones")
              ]),
            )
          ],
        ),
      ),
    );
  }
}
