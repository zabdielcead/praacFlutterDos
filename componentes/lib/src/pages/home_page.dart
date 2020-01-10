
import 'package:flutter/material.dart';
import 'package:componentes/src/pages/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:componentes/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }
      
       Widget _lista() {

//         print(menuProvider.opciones);
           
          // menuProvider.cargarData().then( (opciones) {
            //  print('_lista');
              //print(opciones);
           //});



          //return ListView(
            //children: _crearListaItems(),
          
          //);



          return FutureBuilder( // widget que permite dibujarse a si mismo 
            future: menuProvider.cargarData(),
            initialData: [],
            builder: (  context, AsyncSnapshot<List<dynamic>> snapshot ) {
                print('builder');
                print(snapshot.data);
                return ListView( 
                  children: _crearListaItems(snapshot.data, context),
                );
            },
          );
       }

        List<Widget> _crearListaItems( List<dynamic> data, BuildContext context ) {
          final List<Widget> opciones = [];
          
          data.forEach( (opt) {
              final widgetTemp = ListTile(
                title: Text( opt['texto'] ),
                leading: getIcon(opt['icon']),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
                onTap: () {
                    final route = MaterialPageRoute(
                        builder:  (context) {
                          return AlertPage();
                        }
                      );
                    Navigator.push(context, route);
                },
              );

              opciones..add(widgetTemp)
                      ..add(Divider());
          });

          return opciones;
        }
}