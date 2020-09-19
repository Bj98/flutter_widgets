import 'package:flutter/cupertino.dart';

class NetworkImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    return Center(
      child: Image.network('https://images.unsplash.com/photo-1547721064-da6cfb341d50',
      height: screenHeight/2,),
    );
  }
}
