import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle; // solo quiero un paquete show

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    cargarData();
  }

   Future<List<dynamic>>   cargarData() async{  // va a retornar en un momento dado future

    final resp = await rootBundle.loadString('data/menu_opts.json');
        // print(data);
        Map dataMap = json.decode(resp);

         //print(dataMap['rutas']);

         opciones = dataMap['rutas'];

         return opciones;
   // .then( (data) {
   // });

  }


}

final menuProvider = new _MenuProvider();