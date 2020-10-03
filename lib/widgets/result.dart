import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_wizards/model/model.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  Model model;
  Result({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'FORM WIDGET RESULT',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        leading: Icon(
          Icons.apps,
          color: Colors.white,
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(model.firstName, style: TextStyle(fontSize: 22)),
            Text(model.lastName, style: TextStyle(fontSize: 22)),
            Text(model.email, style: TextStyle(fontSize: 22)),
            Text(model.password, style: TextStyle(fontSize: 22)),
            Align(
              heightFactor: 8.3,
              alignment: Alignment.bottomRight,
              child: IconButton(
                //alignment: Alignment.bottomRight,
                  color: Colors.black,
                  iconSize: 40,
                  icon: Icon(
                    Icons.keyboard_backspace,
                  ),
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}