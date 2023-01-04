import 'package:flutter/material.dart';
//import 'package:flutter_application_1/screens/home_screen.dart';

import 'screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
  /* aqui inicia, es el punto de partida */
}

class MyApp extends StatelessWidget {
  /* los statelesswidget son mas rapidos, ocupan menos memoria */
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CounterScreen());
  }
}
