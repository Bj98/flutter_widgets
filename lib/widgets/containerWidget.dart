import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    double screenWidth=MediaQuery.of(context).size.width;
//    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'CONTAINER WIDGET',
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
                  'This is container widget demo.',
                  style: TextStyle(color: Colors.white),
                )),
                subtitle: Center(
                    child: Text(
                  'Press the back to return to main menu.',
                  style: TextStyle(color: Colors.white),
                ))),
          ),
          SizedBox(height: 60),
          InkWell(
            splashColor: Colors.green,
            onTap: () {
              log("Container text clicked");
            },
            child: Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular((10)), color: Colors.black),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              //color:Colors.amber,
              child: Text('FIRST RULE:NEVER GIVE UP!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),

              alignment: Alignment.center,
//      width: screenWidth,
//      height:screenHeight
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
        ]));
  }
}
