import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_wizards/customWidgets/customBackButton.dart';
import 'package:text_wizards/customWidgets/myCustomAppBar.dart';

class AssetImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: MyCustomAppBar(
          text: "ASSET IMAGE WIDGET"
      ),
      body: Column(children: <Widget>[
        Card(
          color: Colors.black,
          child: ListTile(
              title: Center(
                  child: Text(
                'This is asset image widget demo.',
                style: TextStyle(color: Colors.white),
              )),
              subtitle: Center(
                  child: Text(
                'Press the back to return to main menu.',
                style: TextStyle(color: Colors.white),
              ))),
        ),
        SizedBox(height: 20),
        Image.asset('images/first.jpg'),

      ]),
      floatingActionButton: CustomBackButton(),
    );
  }
}
