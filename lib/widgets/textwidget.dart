import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_wizards/customWidgets/customBackButton.dart';
import 'package:text_wizards/customWidgets/myCustomAppBar.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: MyCustomAppBar(
            text: "TEXT WIDGET"),
        body: Column(children: <Widget>[
          Card(
            color: Colors.black,
            child: ListTile(
              title: Center(
                  child: Text(
                'This is text widget demo.',
                style: TextStyle(color: Colors.white),
              )),
                subtitle: Center(
                    child: Text(
                      'Press the back to return to main menu.',
                      style: TextStyle(color: Colors.white),
                    ))
            ),
          ),
          SizedBox(height: 60),
          Center(
            child: Text('MOTIVATION',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          Center(
            child: Text('NEVER GIVE UP!',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)),
          ),
          Center(
            child: Text('BELIEVE IN YOURSELF!',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green)),
          ),
        ]
        ),
        floatingActionButton: CustomBackButton()
    );
  }
}
