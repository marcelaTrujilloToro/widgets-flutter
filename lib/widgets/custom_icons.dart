import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../icons/custom_icons.dart' as MyIcons;

class CustomIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          // Icons.access_alarms_rounded, // iconos de estilo Material
          // CupertinoIcons.ant_circle_fill, // iconos de estilo IOS
          MyIcons.CustomIcons.telaran_a, // iconos personalizados, se añade la fuent al pubspec.yaml
          size: 100,
          color: Colors.lightBlueAccent,
          semanticLabel: 'icono reloj', // para personas con baja vision el dispositivo le habla con el nombre
        ),
      ),
    );
  }
}

// NOTAS: 

// https://www.pngtosvg.com/ convertir imagenes a svg para luego volverlas iconos

// https://www.fluttericon.com/ para crear paquetes personalizados de iconos 
