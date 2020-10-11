import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_wizards/customWidgets/customBackButton.dart';
import 'package:text_wizards/customWidgets/myCustomAppBar.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    double screenWidth=MediaQuery.of(context).size.width;
//    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.red,
        appBar:MyCustomAppBar(
            text: "CONTAINER WIDGET"
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
          )
        ]),
        floatingActionButton: CustomBackButton()
    );
  }
}
