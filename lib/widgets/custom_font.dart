import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: const [
            Text(
              '''
Lorem Ipsum is simply dummy text of the printing and 
typesetting industry. Lorem Ipsum has been the industry's 
standard dummy text ever since the 1500s, when an 
unknown printer took a galley of type and scrambled it 
to make a type specimen book. It has survived not only
 five centuries, but also the leap into electronic
  typesetting, remaining essentially unchanged.
''',
              style: TextStyle(
                  // para fuentes personalizadas se añaden en el pubspec.yaml para luego usarlas en el proyecto
                  fontFamily: 'Nunito',
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
    );
  }
}
