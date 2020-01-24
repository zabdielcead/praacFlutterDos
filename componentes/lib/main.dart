import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';   // se graga multilengiaje
import 'package:componentes/src/routes/routes.dart';
import 'package:componentes/src/pages/alert_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
       localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
         supportedLocales: [
              const Locale('en','US'), // English
              const Locale('es','ES'), // Hebrew
              
    
          ],
      // home:  HomePage()
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings) { // si no encuentran otras rutas definidas si no esta en routes se dispara onGenerateRoute
          print('Ruta llamada :  ${settings.name} ');
          return MaterialPageRoute(
              builder: (BuildContext context ) => AlertPage()
            );
      },
      //Scaffold(
       /* appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: HomePageTemp()
        */

      //),
    );
  }
}