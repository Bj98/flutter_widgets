import 'package:flutter/material.dart';
import 'package:text_wizards/widgets/assetImageWidget.dart';
import 'package:text_wizards/widgets/bottomNavigationWidget.dart';
import 'package:text_wizards/widgets/dynamicListViewWidget.dart';
import 'package:text_wizards/widgets/listTileWidget.dart';
import 'package:text_wizards/widgets/separatedListViewWidget.dart';
import 'package:text_wizards/widgets/stackWidget.dart';
import 'package:text_wizards/widgets/staticListViewWidget.dart';
import 'package:text_wizards/widgets/flatButtonWidget.dart';
import 'package:text_wizards/widgets/iconButtonWidget.dart';
import 'package:text_wizards/widgets/networkImageWidget.dart';
import 'package:text_wizards/widgets/raisedbuttonwidget.dart';
import 'package:text_wizards/widgets/raisedButtonWithIcon.dart';
import 'package:text_wizards/widgets/richtextwidget.dart';
import 'package:text_wizards/widgets/rowWidget.dart';
import 'package:text_wizards/widgets/tabBarWidget.dart';
import 'package:text_wizards/widgets/textwidget.dart';
import 'widgets/containerWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //primarySwatch: Colors.red,
        primaryColor: Colors.black,
        //accentColor: Colors.white,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Scaffold(
            backgroundColor: Colors.red,
            appBar: AppBar(
              title: Text(
                'FLUTTER WIDGETS',
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
//      body: TabBarWidget(),
            body: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Card(
                      child: ListTile(
                        title: Center(
                            child: Text(
                          'Which widget are you seeking for?',
                          style: TextStyle(color: Colors.white),
                        )),
                        subtitle: Center(
                            child: Text('Scroll down for many widgets! ',
                                style: TextStyle(color: Colors.white))),
                      ),
                      color: Colors.black,
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: FlatButton(
                          color: Colors.black,
                          splashColor: Colors.red,
                          padding: EdgeInsets.all(20),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TextWidget()));
                          },
                          child: Text("TEXT WIDGET",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: FlatButton(
                          color: Colors.black,
                          splashColor: Colors.red,
                          padding: EdgeInsets.all(20),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>RichTextWidget()));
                          },
                          child: Text("RICH TEXT WIDGET",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: FlatButton(
                          color: Colors.black,
                          splashColor: Colors.red,
                          padding: EdgeInsets.all(20),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ContainerWidget()));
                          },
                          child: Text("CONTAINER WIDGET",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: FlatButton(
                          color: Colors.black,
                          splashColor: Colors.red,
                          padding: EdgeInsets.all(20),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>FlatButtonWidget()));
                          },
                          child: Text("FLAT BUTTON",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: FlatButton(
                          color: Colors.black,
                          splashColor: Colors.red,
                          padding: EdgeInsets.all(20),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>RaisedButtonWidget()));
                          },
                          child: Text("RAISED BUTTON",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: FlatButton(
                          color: Colors.black,
                          splashColor: Colors.red,
                          padding: EdgeInsets.all(20),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>RaisedButtonWithIcon()));
                          },
                          child: Text("RAISED BUTTON WITH ICON",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: FlatButton(
                          color: Colors.black,
                          splashColor: Colors.red,
                          padding: EdgeInsets.all(20),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>IconButtonWidget()));
                          },
                          child: Text("ICON BUTTON WIDGET",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: FlatButton(
                          color: Colors.black,
                          splashColor: Colors.red,
                          padding: EdgeInsets.all(20),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AssetImageWidget()));
                          },
                          child: Text("ASSET IMAGE WIDGET",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: FlatButton(
                          color: Colors.black,
                          splashColor: Colors.red,
                          padding: EdgeInsets.all(20),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>NetworkImageWidget()));
                          },
                          child: Text("NETWORK IMAGE WIDGET",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: FlatButton(
                          color: Colors.black,
                          splashColor: Colors.red,
                          padding: EdgeInsets.all(20),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>StackWidget()));
                          },
                          child: Text("STACK IMAGE WIDGET",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: FlatButton(
                          color: Colors.black,
                          splashColor: Colors.red,
                          padding: EdgeInsets.all(20),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>RowWidget()));
                          },
                          child: Text("ROW WIDGET",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                    SizedBox(height: 20),




                  ]),
            )));
  }
}
