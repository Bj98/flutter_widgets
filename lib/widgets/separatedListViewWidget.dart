
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeparatedListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J'
    ];
    final List<int> colors = <int>[
      1000,
      900,
      800,
      700,
      600,
      400,
      300,
      400,
      500,
      300,
      200,
      100
    ];
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      itemCount: entries.length,
      itemBuilder: (BuildContext context,int index){
        return Container(
          height: 50,
          color: Colors.red[colors[index]],
          child: Center(child: Text('${entries[index]}'),),
        );
      },
      separatorBuilder: (BuildContext context,int index)=>const Divider(
        color: Colors.black,
      ),
    );

  }
}
