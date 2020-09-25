import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StaticListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ScrollPhysics(),
      //padding: const EdgeInsets.all(40),

      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(4),
          height: 200,
          color: Colors.red,
          child: const Center(child: Text('A'),),
        ),
        Container(
          margin: const EdgeInsets.all(4),
          height: 200,
          color: Colors.red,
          child: const Center(child: Text('B'),),
        ),
        Container(
          margin: const EdgeInsets.all(4),
          height: 200,
          color: Colors.red,
          child: const Center(child: Text('C'),),
        ),
        Container(
          margin: const EdgeInsets.all(4),
          height: 200,
          color: Colors.red,
          child: const Center(child: Text('D'),),
          padding: const EdgeInsets.all(4),
        ),
        Container(
          margin: const EdgeInsets.all(4),
          height: 200,
          color: Colors.red,
          child: const Center(child: Text('E'),),
        ), Container(
          margin: const EdgeInsets.all(4),
          height: 200,
          color: Colors.red,
          child: const Center(child: Text('F'),),
        )
      ],
    );
  }/**/
}