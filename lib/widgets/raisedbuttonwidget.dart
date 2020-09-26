import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_wizards/widgets/raisedButtonWithIcon.dart';

class RaisedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'RAISED BUTTON',
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
        body: Column(children: <Widget>[
          Card(
            color: Colors.black,
            child: ListTile(
                title: Center(
                    child: Text(
                  'This is raised button demo.',
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
            child: RaisedButton(
              splashColor: Colors.red,
              color:Colors.black,
              padding: EdgeInsets.all(20),
              onPressed: () => {
                log('Raised button is clicked'),
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>RaisedButtonWithText()))
                Navigator.pop(context)
              },
              child: Text(
                'Raised Button',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              elevation: 10,
            ),
          ),
        ]));
  }
}
