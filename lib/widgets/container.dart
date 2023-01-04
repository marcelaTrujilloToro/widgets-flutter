import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/widgets/text.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.centerLeft,
      child: DefaultTextStyle(
        style: TextStyle(),
        child: Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.only(left: 20),
            // padding: EdgeInsets.symmetric(
            //   horizontal: 30,
            // ),
            // alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey[200],

              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.elliptical(50, 20)
              // ),
              /* borderRadius: BorderRadius.all(
                Radius.circular(20),
              ), */
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(30),
              // ),
              shape: BoxShape
                  .circle, // en lugar de trabajar con radius para hacerlo circulo
              // gradient: LinearGradient(
              //   colors: [
              //     Colors.yellow.shade200,
              //     Colors.grey.shade700,
              //     Colors.grey.shade100,
              //   ],
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomRight,
              //   stops: const [0.3, 0.6, 1],
              // ),
              gradient: RadialGradient(
                colors: [
                  Colors.grey.shade700,
                  Colors.grey.shade100,
                ],
                stops: const [0.3, 1],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.pink.shade600.withOpacity(0.9),
                  blurRadius: 40,
                  // spreadRadius: 100,
                  offset: Offset(0, 40), // para que se mueva la sombra
                ),
                BoxShadow(
                  color: Colors.blue.shade400,
                  blurRadius: 10,
                ),
              ],
            ),
            padding: EdgeInsets.all(20),
            // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            // padding: EdgeInsets.only(
            //   right: 10,
            //   left: 20,
            //   top: 10,
            //   bottom: 10
            // ),
            child: MyText()),
      ),
    );
  }
}
