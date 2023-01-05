import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // el ListView.builder evita los problemas de rendimiento cuando son muchos items de la lista, solo muestra lo que se esta viendo no todos los elementos
      // body: ListView.builder(
      body: ListView.separated(
        itemBuilder: (_, int index) {
          print("🍉");
          return Container(
            height: 100,
            color: Colors.green,
            margin: EdgeInsets.all(5),
            child: FlutterLogo(),
            alignment: Alignment.center,
          );
        },
        itemCount: 1000,
        separatorBuilder: (_, int index) {
          return Divider();
        },
      ),
    );
  }
}
