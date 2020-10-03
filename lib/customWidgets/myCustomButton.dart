import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {

  final Widget navigationWidget;
  final String text;

  MyCustomButton({
    this.navigationWidget,this.text
});


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width;
    return Center(
      child: SizedBox(
        width: width-18.0,
        child: FlatButton(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
            side: BorderSide(color: Colors.green,width: 4),
          ),
            color: Colors.black,
            splashColor: Colors.red,
            padding: EdgeInsets.all(20),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>navigationWidget));
            },
            child: Text(text,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))),
      ),
    );
  }
}
