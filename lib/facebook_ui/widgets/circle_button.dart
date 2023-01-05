import 'package:flutter/material.dart';
import 'package:flutter_app/icons/custom_icons.dart';

class CircleButton extends StatelessWidget {
  final Color color;
  final IconData iconData;

  const CircleButton({
    Key? key,
    required this.color,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: Icon(
          iconData,
          color: Colors.white,
          size: 18,
        ),
      ),
    ]);
  }
}
