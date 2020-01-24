import 'package:flutter/material.dart';


class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  List<int> _listaNumeros = [1,2,3,4,5,6];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Listas'),
      ),
      body: _crearList(),
    );
  }


  Widget _crearList(){
      return ListView.builder(
          itemCount: _listaNumeros.length,
          itemBuilder: ( BuildContext context, int index) {
            final imagen = _listaNumeros[index];
              return FadeInImage(
                              image: NetworkImage('https://picsum.photos/500/300/?image=$index'),
                              placeholder: AssetImage('assets/jar-loading.gif'),
                     );
          } ,
      );
  }
}