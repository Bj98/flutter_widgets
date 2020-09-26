import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NetworkImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'NETWORK IMAGE WIDGET',
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
                  'This is network image widget demo.',
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
            child: Image.network(
              'https://images.unsplash.com/photo-1547721064-da6cfb341d50',
              height: screenHeight / 2,
            ),
          ),
          Align(
            heightFactor: 2.1,
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
