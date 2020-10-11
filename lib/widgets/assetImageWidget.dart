import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_wizards/customWidgets/customBackButton.dart';

class AssetImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'ASSET IMAGE',
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
