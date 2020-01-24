import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre   = '';
  String _email    = '';
  String _password = '';
  String _fecha    = '';

  String _opcionSeleccionada = 'Volar';

  List<String> _poderes = ['Volar', 'Rayosx', 'SuperAliento', 'Super fuerza'];

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar:AppBar(
                title: Text('Inputs de texto'),
              ),
              body: ListView(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                      children: <Widget>[
                        _crearInput(),
                        Divider(),
                        _crearEmail(),
                        Divider(),
                        _crearPassword(),
                        Divider(),
                        _crearFecha(context),
                        Divider(),
                        _crearDropdown(),
                        Divider(),
                        _crearPersona()
                      ],
                  ),
            );
  }

   Widget _crearInput() {

      return TextField(
        autofocus: false,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
          ),
          counter: Text('letras ${_nombre.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'solo es el nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)

        ),
        onChanged: (valor) {
          setState(() {
              _nombre = valor;
            
          });
         
        },

      );
    }


     Widget _crearPersona() {
       return ListTile(
          title: Text('Nombre es: $_nombre'),
          subtitle: Text('Email es: $_email'),
          trailing: Text('Pass es: $_password  opcion $_opcionSeleccionada'),
         
       );
     }

      Widget _crearEmail() {

        return TextField(
           // autofocus: true,
            //textCapitalization: TextCapitalization.sentences,
              keyboardType:  TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                ),
                hintText: 'Email de la persona',
                labelText: 'Email',
                suffixIcon: Icon(Icons.alternate_email),
                icon: Icon(Icons.email)
              ),
              onChanged: (valor) {
                setState(() {
                    _email = valor;
                });
              },
        );
      }


       Widget _crearPassword() {
          return TextField(
           // autofocus: true,
            //textCapitalization: TextCapitalization.sentences,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                ),
                hintText: 'Password de la persona',
                labelText: 'Password',
                suffixIcon: Icon(Icons.lock_open),
                icon: Icon(Icons.lock)
              ),
              onChanged: (valor) {
                setState(() {
                    _password = valor;
                });
              },
        );
       }

      Widget _crearFecha( BuildContext context ) {
            return TextField(
      
              enableInteractiveSelection: false,
              controller: _inputFieldDateController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                ),
                hintText: 'Fecha de nacimiento',
                labelText: 'Fecha',
                suffixIcon: Icon(Icons.calendar_today),
                icon: Icon(Icons.calendar_view_day)
              ),
              onTap: () { // click en el elemento 
                FocusScope.of(context).requestFocus(new FocusNode()); // para que cuando se de click  no se ponga el focus en el campo
                _selectDate(context);
              },
        );
      }

      void _selectDate(BuildContext context) async {
        DateTime picked = await showDatePicker(
          context: context,
          initialDate: new DateTime.now(),
          firstDate: new DateTime(2019),
          lastDate: new DateTime(2025),
          locale: Locale('es', 'ES')
        );
        if (picked != null) {
          setState(() {
            _fecha = picked.toString();
            _inputFieldDateController.text = _fecha;
          });
        }
      }

    


      /*
       PARA MULTILENGUAJE EN FLUTTER
          https://api.flutter.dev/flutter/flutter_localizations/GlobalMaterialLocalizations-class.html
          https://flutter.dev/docs/development/accessibility-and-localization/internationalization#specifying-supportedlocales


          SE AGREGO A pubspec.yaml

           flutter_localizations:
              sdk: flutter  

       */

      List<DropdownMenuItem<String>> getOpcionesDropdown () {
         List<DropdownMenuItem<String>> lista = new List();

         _poderes.forEach( (poder) {
            lista.add(DropdownMenuItem(
                child: Text(poder),
                value: poder,
            ));
         });
        return lista;
      }

        Widget _crearDropdown() { // es como un select

          return Row(
                    children: <Widget>[
                      Icon(Icons.select_all),
                      SizedBox(width: 30.0, ),
                      Expanded(
                           child: DropdownButton(
                            value: _opcionSeleccionada,
                            items: getOpcionesDropdown(),
                            onChanged: (opt) {
                              setState(() {
                                _opcionSeleccionada = opt;
                              });
                            },
                         ),
                      )

                    ],
              );

         
        } 
}
