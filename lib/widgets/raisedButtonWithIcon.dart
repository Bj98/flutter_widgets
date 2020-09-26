import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RaisedButtonWithIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'RAISED BUTTON WITH ICON',
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
        body: Column(
          children: <Widget>[
            Card(
              color: Colors.black,
              child: ListTile(
                  title: Center(
                      child: Text(
                    'This is raised button with icon demo.',
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
              child: RaisedButton.icon(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)),
                padding: EdgeInsets.all(20),
                icon: Icon(
                  Icons.battery_charging_full,
                  color: Colors.white,
                  size: 30,
                ),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.pop(context);
                },
                label: Text('Recharging!',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            )
          ],
        ));
  }
}
