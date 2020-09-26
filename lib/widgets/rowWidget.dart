import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'ROW WIDGET',
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
                'This is row widget demo.',
                style: TextStyle(color: Colors.white),
              )),
              subtitle: Center(
                  child: Text(
                'Press the back to return to main menu.',
                style: TextStyle(color: Colors.white),
              ))),
        ),
        SizedBox(height: 60),
        Container(
          color: Colors.white,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//        Container(height: 60, width: 60, color: Colors.red),
//        Container(height: 60, width: 60, color: Colors.black),
//        Container(height: 60, width: 60, color: Colors.red)
              IconButton(icon: Icon(Icons.fast_rewind)),
              IconButton(icon: Icon(Icons.play_arrow)),
              IconButton(icon: Icon(Icons.pause)),
              IconButton(icon: Icon(Icons.fast_forward)),
              IconButton(icon: Icon(Icons.volume_up))
            ],
          ),
        ),
        Align(
          heightFactor: 6.9,
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
      ]),
    );
  }
}
