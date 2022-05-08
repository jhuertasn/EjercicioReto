import 'package:flutter/material.dart';
import 'package:flutter_drawer/TabBar/Chaufa.dart';
import 'package:flutter_drawer/TabBar/Chefs.dart';
import 'package:flutter_drawer/pages/Battery.dart';
import 'package:flutter_drawer/pages/settings.dart';
import 'package:flutter_drawer/pages/texfield.dart';
import 'package:flutter_drawer/pages/Alert.dart';
import 'package:flutter_drawer/pages/Receta.dart';

class BarraTab extends StatelessWidget {
  //conexion al main.dart
  static const String ruta = "/BarraTab";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'AlertDialog',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: const MyHomePage(title: 'Takya tabBar'),
        routes: <String, WidgetBuilder>{
          Settings.ruta: (BuildContext context) => Settings(),
          Battery.ruta: (BuildContext context) => Battery(),
          Texto.ruta: (BuildContext context) => Texto(),
          Alert.ruta: (BuildContext context) => Alert(),
          Receta.ruta: (BuildContext context) => Receta(),
          BarraTab.ruta: (BuildContext context) => BarraTab()
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController controlador;

  @override
  void initState() {
    super.initState(); //estado inicial
    controlador = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    ListView lista = ListView(
      children: [
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
          leading: const Icon(Icons.settings),
          title: const Text("Configuración"),
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed("/Settings");
            });
          },
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Página Principal"),
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed("/");
            });
          },
        ),
        ListTile(
          leading: Icon(Icons.battery_charging_full),
          title: Text("Bateria"),
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed("/Battery");
            });
          },
        ),
        //enlazando a texfield.dart
        ListTile(
          leading: Icon(Icons.text_fields),
          title: Text("TexField"),
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed("/texfield");
            });
          },
        ),
        ListTile(
          leading: Icon(Icons.add_alert_rounded),
          title: Text("Alert"),
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed("/Alert");
            });
          },
        ),
        ListTile(
          leading: Icon(Icons.list_alt),
          title: Text("Receta"),
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed("/Receta");
            });
          },
        ),
        ListTile(
          leading: Icon(Icons.bar_chart),
          title: Text("TabBar"),
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed("/BarraTab");
            });
          },
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(icon: Icon(Icons.photo_album)), //referencia a home//
            Tab(icon: Icon(Icons.list)),
          ],
          controller: controlador,
        ),
      ),
      //llamando al drawer para que aparesca

      body: Center(
        child: TabBarView(
          children: [
            Chaufa(),
            Chefs(),
          ],
          controller: controlador,
        ),
      ),
    );
  }
}
