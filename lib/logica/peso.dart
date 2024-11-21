<<<<<<< HEAD
// 22.	Se desea conocer el peso acumulado de 10 personas. .En que cambiaria
// la solucion si ahora son 100 personas?
// peso.dart
class Peso {
  List<double> _pesos = [];

  // Método para agregar peso a la lista
  bool agregarPeso(double peso) {
    if (peso <= 0) {
      return false;  // No se permite peso negativo o cero
    }
    _pesos.add(peso);
    return true;
  }

  // Método para obtener el peso acumulado
  double obtenerPesoAcumulado() {
    return _pesos.reduce((a, b) => a + b);  // Sumar todos los elementos de la lista
  }

  // Método para obtener la lista de los pesos
  List<double> obtenerPesos() {
    return _pesos;
  }
}
=======
// 22.	Se desea conocer el peso acumulado de 10 personas. .En que cambiaria
// la solucion si ahora son 100 personas?
// peso.dart
class Peso {
  List<double> _pesos = [];

  // Método para agregar peso a la lista
  bool agregarPeso(double peso) {
    if (peso <= 0) {
      return false;  // No se permite peso negativo o cero
    }
    _pesos.add(peso);
    return true;
  }

  // Método para obtener el peso acumulado
  double obtenerPesoAcumulado() {
    return _pesos.reduce((a, b) => a + b);  // Sumar todos los elementos de la lista
  }

  // Método para obtener la lista de los pesos
  List<double> obtenerPesos() {
    return _pesos;
  }
}
>>>>>>> 6a1a2bc4ebbd92d44e4dee84c81b0e92a6364bb0
