import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_wizards/customWidgets/myCustomAppBar.dart';

class FlatButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar:MyCustomAppBar(
          text: "FLAT BUTTON"
      ),
      body: Column(children: <Widget>[
        Card(
          color: Colors.black,
          child: ListTile(
              title: Center(
                  child: Text(
                    'This is flat button demo.',
                    style: TextStyle(color: Colors.white),
                  )),
              subtitle: Center(
                  child: Text(
                    'Press the button to return to main menu.',
                    style: TextStyle(color: Colors.white),
                  ))),
        ),
        SizedBox(height: 60),
        Center(
          child: FlatButton(
              color: Colors.black,
              splashColor: Colors.pinkAccent,
              padding: EdgeInsets.all(20),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("FLAT BUTTON",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white))),
        ),
      ]),
    );
  }
}
