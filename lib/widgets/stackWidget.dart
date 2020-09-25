
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: const Alignment(0.8, -0.5),
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/hello.jpg'),
            radius: 200,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: Text('Hi There!',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 24 ),),
          )
        ],

      ),
    );
  }
}
