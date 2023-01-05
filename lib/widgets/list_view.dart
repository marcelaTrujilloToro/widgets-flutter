import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/widgets/list_view_buider.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // funcona como un scroll view con un column,
      body: SafeArea(
        child: ListView(
          // scrollDirection: Axis.horizontal, lista horizontal
          // physics: ClampingScrollPhysics(), desactivar efecto resorte
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            IconButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (_) => MyListViewBuilder(),
                );
                Navigator.push(context, route);
              },
              icon: Icon(Icons.login),
            ),
            TextField(),
            Container(
              height: 600,
              color: Colors.red,
            ),
            Container(
              height: 400,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
