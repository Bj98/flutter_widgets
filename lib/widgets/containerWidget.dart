import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    double screenWidth=MediaQuery.of(context).size.width;
//    double screenHeight=MediaQuery.of(context).size.height;
    return InkWell(
      splashColor: Colors.green,
      onTap: () {
        log("Container text clicked");
      },
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular((10)), color: Colors.red),
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        //color:Colors.amber,
        child: Text('FIRST RULE:NEVER GIVE UP!',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),

        alignment: Alignment.center,
//      width: screenWidth,
//      height:screenHeight
      ),
    );
  }
}
