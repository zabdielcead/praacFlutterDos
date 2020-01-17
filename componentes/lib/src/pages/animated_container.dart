import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPage createState() => _AnimatedContainerPage();
}
// animaciones https://flutter.dev/docs/cookbook/animation/animated-container
// curves https://api.flutter.dev/flutter/animation/Curves-class.html
class _AnimatedContainerPage extends State<AnimatedContainerPage> {
    double _width  =  50.0;
    double _height =  50.0;
    Color  _color  =  Colors.pink;
    BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Conatiner'),
      ),
      body: Center(
        child: AnimatedContainer(
            curve: Curves.fastOutSlowIn,
            duration: Duration(seconds: 1),
            width:  _width,
            height: _height,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color
            )
        ),
      ),
      floatingActionButton: FloatingActionButton(
                              child: Icon(Icons.play_arrow),
                              onPressed: _cambiarForma,
                          ),
    );
  }

  void _cambiarForma() {

    final random = Random();

    setState(() { // para que se aplique y redibuje
    _width  = random.nextInt(300).toDouble();
    _height = random.nextInt(300).toDouble();
    _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    });
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
  }
}