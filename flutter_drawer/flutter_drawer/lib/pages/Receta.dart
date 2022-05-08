import 'package:flutter/material.dart';

class Receta extends StatelessWidget {
  static const String ruta = "/Receta";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlertDialog',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Receta Arroz Chaufa'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _actualpaso = 0;
  List<Step> mispasos = [
    const Step(
        title: Text("Paso 1"),
        content: Text(
            "En una sartén echamos un chorro de aceite con media tasa de cebolla china picada muy fina.")),
    const Step(
        title: Text("Paso 2"), content: Text("Una cucharada de ajo molido")),
    const Step(
        title: Text("Paso 3"),
        content: Text(
            "Dejamos freír por dos minutos, añadimos media tasa de pimiento rojo picado en trozos chiquitos, una taza de alguna carne que sea de tu gusto.")),
    const Step(
        title: Text("Paso 4"),
        content: Text("Dejamos dorar todo por dos minutos.")),
    const Step(
        title: Text("Paso 5"),
        content: Text(
            "Añadimos cuatro tazas de arroz cocido, añadimos el fuego al máximo y dejamos dorar hasta que el arroz se este friendo.")),
    const Step(
        title: Text("Paso 6"),
        content: Text(
            "Cuando esté friéndose bien, damos vuelta al arroz y lo mezclamos, dejamos de mover y volvemos a dejar dorar por unos segundos.")),
    const Step(
        title: Text("Paso 7"),
        content: Text(
            "Repetimos el mismo proceso de mezclar y dejar dorar por al menos 3 veces.")),
    const Step(
        title: Text("Paso 8"),
        content: Text(
            "Añadimos cuatro cucharadas de aceite vegetal, ocho cucharadas de sillao, sal, pimienta, un poquito de azúcar.")),
    const Step(
        title: Text("Paso 9"),
        content: Text(
            "Una cucharada de salsa de ostión, dos tasas de cebolla china, añadimos cuatro huevos en modo de tortilla, damos la última movida y a comer.")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Stepper(
          //Indica el paso actual del Stepper
          currentStep: _actualpaso,
          steps: mispasos,
          //cambiamos la forma del Stepper
          type: StepperType.vertical,
          onStepContinue: () {
            setState(() {
              if (_actualpaso < mispasos.length - 1) {
                _actualpaso++;
              } else {
                _actualpaso = 0;
              }
            });
            print("Mi paso actual es " + _actualpaso.toString());
          },
          onStepCancel: () {
            setState(() {
              if (_actualpaso > 0) {
                _actualpaso--;
              } else {
                _actualpaso = 0;
              }
            });

            print("Mi paso actual es " + _actualpaso.toString());
          },
          onStepTapped: (Paso) {
            setState(() {
              _actualpaso = Paso;
            });
            print("Mi paso actual es " + _actualpaso.toString());
          },
        ),
      ),
    );
  }
}
