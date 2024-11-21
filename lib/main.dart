<<<<<<< HEAD
// main.dart
import 'package:flutter/material.dart';
import 'UI/interfaz.dart';  // Importa la interfaz desde la carpeta UI

void main() {
  runApp(MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acumulador de Peso',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Interfaz(), // Ruta a la interfaz
    );
  }
}
=======
// main.dart
import 'package:flutter/material.dart';
import 'UI/interfaz.dart';  // Importa la interfaz desde la carpeta UI

void main() {
  runApp(MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acumulador de Peso',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Interfaz(), // Ruta a la interfaz
    );
  }
}
>>>>>>> 6a1a2bc4ebbd92d44e4dee84c81b0e92a6364bb0
