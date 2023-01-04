import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTextStyle(
        style: TextStyle(),
        child: Text(
          "Tempor ipsum culpa eu velit voluptate ea dolore aliqua consequat."
          "Anim ut enim anim culpa culpa laborum magna amet.",
          maxLines: null, // usa las lineas necesarias para mostrar el texto...
          // overflow: TextOverflow.ellipsis, // para indicar al usuario que hay texto que no se esta mostrando
          style: TextStyle(
            fontSize: 15,
            color: Colors.blue[600],
          ),
          // textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
