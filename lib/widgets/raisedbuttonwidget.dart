import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RaisedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        padding: EdgeInsets.all(20),
        onPressed: () => {log('Raised button is clicked')},
        child: Text(
          'Click Me!',
          style: TextStyle(fontSize:20,color: Colors.black,fontWeight: FontWeight.bold),
        ),
        elevation: 2,
        color: Colors.red,
      ),
    );
  }
}