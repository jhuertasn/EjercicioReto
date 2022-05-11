import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  static const String ruta = "/Alert";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter AlertDialog',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Takya Inc"),
        ),
        body: Home(),
      ),
      theme: new ThemeData(primaryColor: Colors.purple),
    );
  }
}

class Home extends StatelessWidget {
  /**
  Comstruct our widget and return it.
   */
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              // return object of type AlertDialog
              return AlertDialog(
                title: new Text("Takya Inc"),
                content: new Text("Esto es Takya inc." +
                    " " +
                    "Bienvenidos a la aplicación."),
                actions: <Widget>[
                  // usually buttons at the bottom of the dialog
                  new FlatButton(
                    child: new Text("Cerrar"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
        child: Text('Mostrar Alerta'),
      ),
    );
  }
}
//end