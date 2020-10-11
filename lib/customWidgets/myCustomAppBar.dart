import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomAppBar extends StatelessWidget with PreferredSizeWidget{

  final String text;

  MyCustomAppBar(
      {this.text
      });


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top:20.0),
        color: Colors.black,
        height: preferredSize.height,
        alignment: Alignment.center,
        child:Align(
          alignment: Alignment.centerLeft,
            child: Text("  "+text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24,fontStyle: FontStyle.italic,),)),
      );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(80.0);
}
