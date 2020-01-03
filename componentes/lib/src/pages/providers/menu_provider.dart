import 'package:flutter/services.dart' show rootBundle; // solo quiero un paquete show

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    cargarData();
  }

  void cargarData() {

    rootBundle.loadString('data/menu_opts.json')
    .then( (data) {
        print(data);
    });
  }


}

final menuProvider = new _MenuProvider();