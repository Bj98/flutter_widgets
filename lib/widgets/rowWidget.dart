import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
//        Container(height: 60, width: 60, color: Colors.red),
//        Container(height: 60, width: 60, color: Colors.black),
//        Container(height: 60, width: 60, color: Colors.red)
        IconButton(icon: Icon(Icons.fast_rewind)),
        IconButton(icon: Icon(Icons.play_arrow)),
        IconButton(icon: Icon(Icons.pause)),
        IconButton(icon: Icon(Icons.fast_forward)),
        IconButton(icon: Icon(Icons.volume_up))
      ],
    );
  }
}
