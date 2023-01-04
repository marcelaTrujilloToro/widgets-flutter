import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                //quita efecto de reesorte al hacer el scroll
                // physics: ClampingScrollPhysics(),
                // physics: NeverScrollableScrollPhysics(), // nunca hacer scroll
                child: Row(children: List.generate(
                    18,
                    (index) => Container(
                      child: Text("$index"),
                      alignment: Alignment.center,
                      color: Colors.primaries[index],
                      height: 200,
                      width: 100,
                    ),
                  ),),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    18,
                    (index) => Container(
                      child: Text("$index"),
                      color: Colors.primaries[index],
                      height: 100,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                // reverse: true,  comienza con el scroll al final (si es la primera vez uqe se muestra el scroll view)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
