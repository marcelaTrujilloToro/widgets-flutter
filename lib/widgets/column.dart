import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/row.dart';
import 'package:flutter_app/widgets/text.dart';

import 'container.dart';

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(color: Colors.red),
      child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            vertical: 55,
          ),
          child: Container(
            color: Colors.green.shade200,
            child: Column(
              //solo si el container esta envuelto por un Center(),
              // la altura se calcula en base a los hijos
              // mainAxisSize: MainAxisSize.min, 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(),
                Text(
                  "Marcela Trujillo Toro",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(), // sirve para crear espacio entre widgets, solo se usa dentro de Colum() o Row()
                MyContainer(),
                Container(
                  height: 100,
                  color: Colors.pinkAccent,
                ),
                Expanded(
                  // trata de opcupar todo el espacio dispnible, respetando el espacio de los demas widgets, 
                  //solo se puede usar dentro de Column o Row
                  child: Container(
                      child: MyRow(),
                      height: 200,
                      color: Colors.blue,
                      margin: EdgeInsets.only(top: 20)),
                ),
                Flexible(
                    child: FlutterLogo(
                  size: 200,
                ))
              ],
            ),
          )),
    );
  }
}
