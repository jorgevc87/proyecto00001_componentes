import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  MenuProvider() {
    _cargarData();
  }

  void _cargarData() {
    rootBundle.loadString('data/menu_opts.json').then((data) {
      print(data);
    });
  }
}

//Se hace la clase y el metodo privado
//Cuando se instancia fuera de la misma clase entonces
//se está usando una sola instancia para todo el proyecto.
final menuProvider = new _MenuProvider();
