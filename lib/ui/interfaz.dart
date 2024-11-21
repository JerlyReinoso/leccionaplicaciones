// interfaz.dart
import 'package:flutter/material.dart';
import '../logica/peso.dart';  // Importa la lógica del cálculo

class Interfaz extends StatefulWidget {
  @override
  _InterfazState createState() => _InterfazState();
}

class _InterfazState extends State<Interfaz> {
  final Peso _peso = Peso();  // Instancia de la clase Peso
  final TextEditingController _controller = TextEditingController();
  String _mensajeError = "";  // Mensaje de error para la UI
  double _pesoAcumulado = 0;

  void _agregarPeso() {
    String pesoInput = _controller.text.trim();

    // Validaciones
    if (pesoInput.isEmpty) {
      setState(() {
        _mensajeError = "El campo no puede estar vacío";
      });
      return;
    }

    // Validar si el valor es numérico
    double? peso = double.tryParse(pesoInput);
    if (peso == null) {
      setState(() {
        _mensajeError = "Por favor ingresa un valor numérico válido";
      });
      return;
    }

    // Validar que el peso sea positivo
    if (peso <= 0) {
      setState(() {
        _mensajeError = "El peso debe ser un valor positivo";
      });
      return;
    }

    // Si la validación es exitosa, agregar el peso
    bool resultado = _peso.agregarPeso(peso);
    if (resultado) {
      setState(() {
        _pesoAcumulado = _peso.obtenerPesoAcumulado();
        _mensajeError = "";  // Limpiar mensaje de error
      });
      _controller.clear(); // Limpiar el campo de texto
    } else {
      setState(() {
        _mensajeError = "Hubo un error al agregar el peso";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acumulador de Peso'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Introduce el peso',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _agregarPeso,
              child: Text('Agregar Peso'),
            ),
            SizedBox(height: 20),
            if (_mensajeError.isNotEmpty)
              Text(
                _mensajeError,
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
            SizedBox(height: 20),
            Text(
              'Peso Acumulado: $_pesoAcumulado kg',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Número de personas: ${_peso.obtenerPesos().length}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
