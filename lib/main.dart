import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_app/widgets/text.dart'; // estilo IOS
// import 'widgets/column.dart';
// import 'widgets/container.dart';
// import 'widgets/scaffold.dart';
// import 'widgets/stack.dart';
// import 'widgets/safe_area.dart';
// import 'widgets/single_child_scroll_view.dart';
// import 'widgets/list_view.dart';
// import 'widgets/custom_font.dart';
// import 'widgets/custom_icons.dart';
// import 'widgets/cupertino_scaffold.dart';
import 'widgets/image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // return CupertinoApp(
    //   // home: MyStack()
    //   home:CupertinoScaffold()
    // );

    // para el scaffold  solo funciona con material
    return MaterialApp(
      // home: MyScaffold(),
      // home: MySafeArea()
      // home: MySingleChildScrollView()
      // home: MyListView()
      // home: CustomFont()
      // home: CustomIcons()
      home: MyImage()
    );
  }
}
