import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center (
              child: RaisedButton(
                      child: Text('Mostrar Alerta'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      shape: StadiumBorder(),  // borde redondeado
                      onPressed: () => _mostrarAlert(context),
                     )
            ),
      floatingActionButton: FloatingActionButton(        
       child: Icon(Icons.add_location),
       onPressed: (){
         Navigator.pop(context);
       },
      )
    );
  }


  void _mostrarAlert(BuildContext context) {
    
    showDialog(
        context: context,
        barrierDismissible: true,  // si clicke a fuera cierro el popup
        builder: (context) {
                // recibe el contexto como argumento 

                return AlertDialog(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    title: Text('Titulo'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('Este es el contenido de la caja de la alerta'),
                        FlutterLogo( size: 100.0 )
                      ],
                    ),
                    actions: <Widget>[
                      FlatButton(
                        child: Text('Cancelar'),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                       FlatButton(
                        child: Text('OK'),
                        onPressed: () => Navigator.of(context).pop(),
                      )
                    ],
                );

        }


    );
  }
}