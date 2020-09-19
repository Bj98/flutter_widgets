import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlatButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          color: Colors.red,
          splashColor: Colors.pinkAccent,
          padding:EdgeInsets.all(20),
          onPressed: () {},
          child: Text("FLAT BUTTON", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
    );
  }
}
