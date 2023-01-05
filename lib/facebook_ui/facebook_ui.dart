import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets/circle_button.dart';
import 'package:flutter_app/icons/custom_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FacebookUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // usar un svg
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          color: Colors.blueAccent,
        ),
        leadingWidth: 150,
        actions: const [
          CircleButton(
            color: Color(0xffbfbfbf),
            iconData: CustomIcons.search,
          ),
          SizedBox(
            width: 12,
          ),
          CircleButton(
            color: Color(0xfffe7574),
            iconData: CustomIcons.bell,
          ),
          SizedBox(
            width: 12,
          ),
          CircleButton(
            color: Color(0xff7bbaff),
            iconData: CustomIcons.user_friends,
          ),
          SizedBox(
            width: 12,
          ),
          CircleButton(
            color: Color(0xff1c86e4),
            iconData: CustomIcons.messenger,
          ),
          SizedBox(
            width: 12,
          ),
        ], // para cambiar el tamaño de el leading
      ),
    );
  }
}
