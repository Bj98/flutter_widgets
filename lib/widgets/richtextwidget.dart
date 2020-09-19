import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text.rich(
          TextSpan(
            text: 'Lets ',
            style: TextStyle(fontSize: 20),
            children: <TextSpan>[
              TextSpan(
                  text: 'Get ', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'MOTIVATED!')
            ],
          ),
        ),
        color:Colors.yellow
      ),
    );
  }
}
