import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = List.generate(
      18,
      (index) => Container(
        child: Text("$index"),
        alignment: Alignment.center,
        color: Colors.primaries[index],
        height: 200,
        width: 100,
      ),
    );

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              height: 200,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                //quita efecto de reesorte al hacer el scroll
                // physics: ClampingScrollPhysics(),
                // physics: NeverScrollableScrollPhysics(), // nunca hacer scroll
                child: Row(children: colors),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag, // para que se esconda el teclado al hacer scroll
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(),
                    ),
                    ...colors,
                  ],
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
