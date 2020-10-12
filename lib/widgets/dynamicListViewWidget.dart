import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_wizards/customWidgets/customBackButton.dart';
import 'package:text_wizards/customWidgets/myCustomAppBar.dart';

class DynamicListViewWidget extends StatelessWidget {
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
    return Scaffold(
      appBar: MyCustomAppBar(
          text: "DYNAMIC LIST VIEW WIDGET"
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(20),
      itemCount: entries.length,
      itemBuilder:(BuildContext context,int index) {
        return Container(
          height: 100,
          color: Colors.red[colors[index]],
          child: Center(child: Text('${entries[index]}'),),
        );
      }
      ),
        floatingActionButton: CustomBackButton()
    );
    }
  }
