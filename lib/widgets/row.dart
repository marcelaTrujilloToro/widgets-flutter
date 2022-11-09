import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(color: Colors.black),
      child: Container(
        color: Colors.red.shade300,
        alignment:  Alignment.centerLeft,
        child: SizedBox(
          width: 300,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
              Container(
                  width:50,
                  height: 50,
                  color: Colors.green,
                ),
                Text('lalalalaaskjdfkajshdf asdfadsf afjahsdjf ahsdjhfajksdhf asdfjahsdfkjahsdfk asjdhfkajsdhfkjahs asjhfasjhdf')
              // Expanded(
              //   child: Container(
              //     width: 50,
              //     height: 50,
              //     color: Colors.green,
              //   ),
              // ),
              // Container(
              //   width: 50,
              //   height: 50,
              //   color: Colors.blue,
              // ),
              // Container(
              //   width: 50,
              //   height: 100,
              //   color: Colors.cyan,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
