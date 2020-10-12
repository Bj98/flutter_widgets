import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_wizards/customWidgets/customBackButton.dart';
import 'package:text_wizards/customWidgets/myCustomAppBar.dart';

class NetworkImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: MyCustomAppBar(
            text: "NETWORK IMAGE WIDGET"
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
          )
        ]),
        floatingActionButton: CustomBackButton()
    );
  }
}
