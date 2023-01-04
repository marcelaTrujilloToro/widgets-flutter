import 'package:flutter/material.dart';

class MySafeArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        // evitar el notch del celular y los floatting action 
        // se puede aplicar a diferentes widgets
        child: SafeArea(
          // bottom: false, al ponerlo en false llega hasta el final por debajo del menu inferior
          child: Column(
            children: [
              Text("Hello"),
              Expanded(
                child: Container(
                  color: Colors.lightBlue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
