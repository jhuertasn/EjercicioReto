import 'package:flutter/material.dart';

class Battery extends StatelessWidget {
  static const String ruta = "/Battery";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Batería"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Column(children: [
                Icon(Icons.battery_alert_outlined,
                    size: 170.0, color: Colors.green),
                Text("Página Batería")
              ]),
            )
          ],
        ),
      ),
    );
  }
}
