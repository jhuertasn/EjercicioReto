import 'package:flutter/material.dart';
import 'package:flutter_drawer/pages/Battery.dart';
import 'package:flutter_drawer/pages/settings.dart';
import 'package:flutter_drawer/pages/texfield.dart';
import 'package:flutter_drawer/pages/Alert.dart';
import 'package:flutter_drawer/pages/Receta.dart';
import 'package:flutter_drawer/pages/BarraTab.dart';
import 'package:flutter_drawer/pages/Inicio.dart';

class OnlyDrawer extends StatefulWidget {
  OnlyDrawerState createState() => OnlyDrawerState();
}

class OnlyDrawerState extends State<OnlyDrawer> {
  int _selectDrawerItem = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return paginaInicial();
      case 1:
        return Settings();
      case 2:
        return Battery();
      case 3:
        return Texto();
      case 4:
        return Alert();
      case 5:
        return Receta();
      case 6:
        return BarraTab();
    }
  }

  _onSelectItem(int pos) {
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Takya Navigation'),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Takya.inc',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),

          AboutListTile(
            child: Text("Información del APP"),
            applicationIcon: Icon(Icons.favorite),
            applicationVersion: "v 10.1",
            applicationName: "Demo Drawer",
            icon: Icon(Icons.info),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Página Principal"),
            onTap: () {
              setState(() {
                _onSelectItem(0);
              });
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Configuración"),
            onTap: () {
              setState(() {
                _onSelectItem(1);
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.battery_charging_full),
            title: Text("Bateria"),
            onTap: () {
              setState(() {
                _onSelectItem(2);
              });
            },
          ),
          //enlazando a texfield.dart
          ListTile(
            leading: Icon(Icons.text_fields),
            title: Text("TexField"),
            onTap: () {
              setState(() {
                _onSelectItem(3);
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.add_alert_rounded),
            title: Text("Alert"),
            onTap: () {
              setState(() {
                _onSelectItem(4);
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.list_alt),
            title: Text("Receta"),
            onTap: () {
              setState(() {
                _onSelectItem(5);
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.bar_chart),
            title: Text("TabBar"),
            onTap: () {
              setState(() {
                _onSelectItem(6);
              });
            },
          )
        ],
      )),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}
