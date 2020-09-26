import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'TEXT WIDGET',
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
                  'This is stack widget demo.',
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
            child: Stack(
              alignment: const Alignment(0.8, -0.5),
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/hello.jpg'),
                  radius: 200,
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text(
                    'Hi There!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24),
                  ),
                )
              ],
            ),
          ),
          Align(
            heightFactor: 1,
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
