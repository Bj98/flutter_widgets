import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';

class TimeDisplay extends StatefulWidget {
  @override
  _TimeDisplayState createState() => _TimeDisplayState();
}

class _TimeDisplayState extends State<TimeDisplay> {
  String getSystemTime() {
    var now = new DateTime.now();
    return new DateFormat("HH:mm:ss").format(now);
  }

  String getSystemDate() {
    var now = new DateTime.now();
    return new DateFormat("yyyy:MM:dd").format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'DIGITAL CLOCK AND DATE',
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
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Container(
          //alignment: Alignment.center,
          color: Colors.white,
          child: Center(
            child:
                TimerBuilder.periodic(Duration(seconds: 1), builder: (context) {
              print("${getSystemTime()}");
              return Text(
                "${getSystemTime()}",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.w700),
              );
            }),
          ),
        ),
        SizedBox(height: 10),
        Container(
          //alignment: Alignment.center,
          color: Colors.white,
          child: Center(
            child:
                TimerBuilder.periodic(Duration(hours: 24), builder: (context) {
              print("${getSystemTime()}");
              return Text(
                "${getSystemDate()}",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.w700),
              );
            }),
          ),
        ),
      ]),
    );
  }
}
