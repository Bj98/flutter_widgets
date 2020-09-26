import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'RICH TEXT WIDGET',
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
                  'This is rich text widget demo.',
                  style: TextStyle(color: Colors.white),
                )),
                subtitle: Center(
                    child: Text(
                  'Press the back to return to main menu.',
                  style: TextStyle(color: Colors.white),
                ))),
          ),
          SizedBox(height: 60),
          Center(
            child: Container(
                child: Text.rich(
                  TextSpan(
                    text: 'Lets ',
                    style: TextStyle(fontSize: 24),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Get ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      TextSpan(text: 'MOTIVATED!')
                    ],
                  ),
                ),
                color: Colors.white),
          ),
          Align(
            heightFactor: 7.5,
            alignment: Alignment.bottomRight,
            child: IconButton(
              //alignment: Alignment.bottomRight,
                color: Colors.black,
                iconSize: 40,
                icon: Icon(
                  Icons.keyboard_backspace,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
        ]));
  }
}
