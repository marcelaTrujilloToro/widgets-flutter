import 'package:flutter/cupertino.dart';

class CupertinoScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold para el paquete de estilos cupertino, no sirve con Material
    return CupertinoPageScaffold(
      child: Center(
        child: Text("cupertino"),
      ),
    );
  }
}
