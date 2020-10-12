import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_wizards/customWidgets/myCustomAppBar.dart';

class IconButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: MyCustomAppBar(
            text: "ICON BUTTON WIDGET"
        ),
        body: Column(children: <Widget>[
          Card(
            color: Colors.black,
            child: ListTile(
                title: Center(
                    child: Text(
                  'This is icon button demo.',
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
            child: IconButton(
              iconSize: 100,
              icon: Icon(Icons.battery_alert),
              onPressed: () {Navigator.pop(context);},
            ),
          ),
        ]));
  }
}
