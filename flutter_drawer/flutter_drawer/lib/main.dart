import 'package:flutter/material.dart';
import 'package:flutter_drawer/Drawer/OnlyDrawer.dart';

void main() => runApp(
      Aplication(),
    );

class Aplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TakyaINC',
        home: OnlyDrawer(),
        theme: ThemeData(
          primaryColor: Color(0xFF2F008E),
          accentColor: Color(0xFFDD303),
        ));
  }
}
