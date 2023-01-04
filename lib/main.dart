import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/column.dart';
import 'widgets/container.dart';
import 'widgets/scaffold.dart';
import 'widgets/stack.dart';
import 'widgets/safe_area.dart';
import 'widgets/single_child_scroll_view.dart';
// import 'package:flutter_app/widgets/text.dart'; // estilo IOS

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // return CupertinoApp(
    //   home: MyStack()
    // );

    //para el scaffold que solo funciona con material
    return MaterialApp(
      // home: MyScaffold(),
      // home: MySafeArea()
      home: MySingleChildScrollView()
    );
  }
}
