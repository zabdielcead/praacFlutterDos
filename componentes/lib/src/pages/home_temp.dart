import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  
  final opciones = ['Uno','Dos','Tres', 'Cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Componentes Temp'),

      ),
      body: ListView(
        //  children: _crearItems()
        children: _crearItemsCorta()
      ),
    );
  }

  List<Widget> _crearItems() {

    List<Widget>   lista = new List<Widget>();

    for (var opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista.add(tempWidget);
      lista.add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    var widgets = opciones.map(    ( item ) {
          return Column(
            children: <Widget>[
              ListTile (
                title: Text(item + '!'),
                subtitle: Text('Cualquier cosa'),
                leading: Icon(Icons.account_balance_wallet),
                trailing: Icon(Icons.keyboard_arrow_right)
              ),
              Divider()
            ],
          );
    }).toList();

    return widgets;
  }

}