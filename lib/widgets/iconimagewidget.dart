
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        iconSize: 50,
        icon: Icon(
          Icons.battery_alert
        ), onPressed: () {  },
      ),
    );
  }
}
