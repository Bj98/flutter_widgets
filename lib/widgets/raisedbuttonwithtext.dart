import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RaisedButtonWithText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first app!'),
      ),
      body: Center(
        child: RaisedButton.icon(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.black)
          ),
          padding: EdgeInsets.all(20),
          icon:Icon(
            Icons.battery_charging_full,
            color: Colors.black,
            size: 30,
          ),
          color:Theme.of(context).primaryColor,
          onPressed: (){
            Navigator.pop(context);
          },
          label: Text('Recharging!',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold)),
        ),
      ),
    );
  }
}
