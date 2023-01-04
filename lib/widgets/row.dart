import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(color: Colors.black),
      child: Container(
        color: Colors.red.shade300,
        alignment: Alignment.centerLeft,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // soluciona los errores de overflow haciendo los sizes dinamicos
            Flexible(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
            ),
            Spacer(), //agrega todo el espacio que tenga disponible
            Flexible(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.amber,
              ),
            ),
            Flexible(
                child: Text(
                    'sajdfkajsld alksdfjlaskd lkajsdflkajsdlkf kasjdflksajdfl aksdfjlak sjdfalskdjfla ksd'))
            // Expanded(
            //   child: Container(
            //     width: 50,
            //     height: 50,
            //     color: Colors.green,
            //   ),
            // ),
            // Container(
            //   width: 50,
            //   height: 50,
            //   color: Colors.blue,
            // ),
            // Container(
            //   width: 50,
            //   height: 100,
            //   color: Colors.cyan,
            // ),
          ],
        ),
      ),
    );
  }
}
