import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool   _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                title: Text('Slider'),
              ),
              body: Container(
                padding: EdgeInsets.only(top: 50.0),
                child: Column(
                    children: <Widget>[
                      _crearSlider(),
                      _checkBpx(),
                      _crearSwitch(),
                      Expanded(
                                child: _crearImagen()
                              )
                    ],
                )
              ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Hola',
      divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: ( _bloquearCheck  ) ? null :  (valor) {
                                                    setState(() {
                                                      _valorSlider = valor;
                                                      
                                                    });
                                                 },
    );
  }

  Widget _crearImagen() {
    return Image(
            image: NetworkImage('https://wipy.tv/wp-content/uploads/2020/01/este-comic-podria-ser-la-respuesta-para-mpiderman-del-mcu-17.jpg'),
            width: _valorSlider,
            fit: BoxFit.contain
           );
  }

  Widget _checkBpx() {
    /*
    return Checkbox(
        value: _bloquearCheck,
        onChanged:  (valor) {
           setState(() {
              _bloquearCheck = valor;
           });
        },

    );
    */

    return CheckboxListTile(   // abarca como todo el renglon le puedes 
        title: Text('Bloquear slider'),
        value: _bloquearCheck,
        onChanged:  (valor) {
           setState(() {
              _bloquearCheck = valor;
           });
        },
    );
  }

  Widget _crearSwitch() {
       return SwitchListTile(   // abarca como todo el renglon le puedes 
        title: Text('Bloquear slider'),
        value: _bloquearCheck,
        onChanged:  (valor) {
           setState(() {
              _bloquearCheck = valor;
           });
        },
    );
  }
}