import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(color: Colors.black),
      child: Container(
        color: Colors.white,
        child: Center(
          child: Container(
            color: Colors.greenAccent,
            width: 400,
            height: 400,
            //elementos uno encima de otro
            child: Stack(
              alignment: Alignment.center,
              children: [
                //ignorar el valor de aligment del stack y poner donde queramos el elemento,
              // solo se puede usar dentro de stack
                Positioned(
                  top: 10,
                  left: 10,
                  right: 10,
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.green,
                    child: Text('Green'),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blueAccent,
                  
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.pink,
                  
                ),
                Text('Hello'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
