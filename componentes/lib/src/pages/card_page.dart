import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
                //padding: EdgeInsets.all(20),
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
                children: <Widget>[
                  _cardTipo1(),
                  SizedBox(height: 30.0,),
                  _cardTipo2(),
                  SizedBox(height: 30.0,),
                   _cardTipo1(),
                  SizedBox(height: 30.0,),
                  _cardTipo2(),
                  SizedBox(height: 30.0,),
                   _cardTipo1(),
                  SizedBox(height: 30.0,),
                  _cardTipo2(),
                  SizedBox(height: 30.0,),
                   _cardTipo1(),
                  SizedBox(height: 30.0,),
                  _cardTipo2(),
                  SizedBox(height: 30.0,),
                   _cardTipo1(),
                  SizedBox(height: 30.0,),
                  _cardTipo2(),
                  SizedBox(height: 30.0,),
                   _cardTipo1(),
                  SizedBox(height: 30.0,),
                  _cardTipo2(),
                  SizedBox(height: 30.0,),
                ]
              ),
    );
  }

  Widget _cardTipo1() {

      return Card(
       
        elevation: 10.0, // para que se vea sombreado por abajo le card
        shape:  RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)  ),
        child: Column(
                  children: <Widget>[
                      ListTile(
                        leading: Icon( Icons.photo_album, color: Colors.blue ),
                        title: Text(' Soy el titulo de esta tarjeta'),
                        subtitle: Text('AKI ESTOY HACIENDO UNA DESCRIPOCION DE LO QUE QUIERO MOSTRAR EN TODOS LOS SENTIDO'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                            FlatButton(
                              child: Text('Cancelar'),
                              onPressed: () {

                              },
                            ), 
                             FlatButton(
                              child: Text('OK'),
                              onPressed: () {
                                
                              }, 
                            )
                        ])
              ]),
      );
  }

   Widget _cardTipo2() {
     
      final card =  Container(
        child: Column(
          children: <Widget>[
            FadeInImage(
                image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/a/ae/Joseph_Wright_of_Derby_-_Italian_Landscape_with_Mountains_and_a_River_-_Google_Art_Project.jpg'),
                placeholder: AssetImage('assets/jar-loading.gif'),
                fadeInDuration: Duration(  milliseconds: 200  ),
                height: 300.0,
                fit: BoxFit.cover,
            ),
            //Image(
              //image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/a/ae/Joseph_Wright_of_Derby_-_Italian_Landscape_with_Mountains_and_a_River_-_Google_Art_Project.jpg'),
            //),
            Container(
              child: Text('No tengo idea de que poner'),
              padding: EdgeInsets.all(10.0) 
              )
          ],
        )
      );
              return Container(
                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30.0),
                                        child: card
                                      ),
                      decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    color: Colors.white,
                                      boxShadow: <BoxShadow>[
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 10.0,
                                            spreadRadius: 2.0,
                                            offset:  Offset(2.0, 10.0)  // mover la sombra
                                          )
                                      ]
                                    ),
                    );
   }  

}