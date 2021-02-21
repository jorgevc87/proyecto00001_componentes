import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    _cargarData();
  }

  void _cargarData() {
    rootBundle.loadString('data/menu_opts.json').then((data) {
      Map dataMap = json.decode(data);

      print(dataMap['rutas']);
    });
  }
}

//Se crea la clase y el metodo privado
//Cuando se instancia fuera de la misma clase entonces
//se está usando una sola instancia para todo el proyecto.
final menuProvider = new _MenuProvider();
