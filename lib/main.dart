import 'package:flutter/material.dart';
import 'package:text_wizards/widgets/assetImageWidget.dart';
import 'package:text_wizards/widgets/bottomNavigationWidget.dart';
import 'package:text_wizards/widgets/dynamicListViewWidget.dart';
import 'package:text_wizards/widgets/listTileWidget.dart';
import 'package:text_wizards/widgets/myForm.dart';
import 'package:text_wizards/widgets/separatedListViewWidget.dart';
import 'package:text_wizards/widgets/stackImageWidget.dart';
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
import 'package:text_wizards/widgets/timeDisplay.dart';
import 'customWidgets/myCustomAppBar.dart';
import 'customWidgets/myCustomButton.dart';
import 'news/screen/news-screen.dart.dart';
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
        errorColor: Colors.black,
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
    //returning widget styles
    return SafeArea(
        top: true,
        child: Scaffold(
            backgroundColor: Colors.red,
            appBar:MyCustomAppBar(
                text: "FLUTTER WIDGETS"
            ),
            //body: MyForm(),
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
                    MyCustomButton(
                      navigationWidget: TextWidget(),
                      text: "TEXT WIDGET",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: RichTextWidget(),
                      text: "RICH TEXT WIDGET",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: ContainerWidget(),
                      text: "CONTAINER WIDGET",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: FlatButtonWidget(),
                      text: "FLAT BUTTON",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: RaisedButtonWidget(),
                      text: "RAISED BUTTON",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: RaisedButtonWithIcon(),
                      text: "RAISED BUTTON WITH ICON",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: IconButtonWidget(),
                      text: "ICON BUTTON WIDGET",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: AssetImageWidget(),
                      text: "ASSET IMAGE WIDGET",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: NetworkImageWidget(),
                      text: "NETWORK IMAGE WIDGET",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: StackImageWidget(),
                      text: "STACK IMAGE WIDGET",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: RowWidget(),
                      text: "ROW WIDGET",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: TabBarWidget(),
                      text: "TAB BAR WIDGET",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: BottomNavigationWidget(),
                      text: "BOTTOM NAVIGATION WIDGET",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: StaticListViewWidget(),
                      text: "STATIC LIST VIEW WIDGET",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: DynamicListViewWidget(),
                      text: "DYNAMIC LIST VIEW WIDGET",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: SeparatedListViewWidget(),
                      text: "SEPARATED LIST VIEW WIDGET",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: ListTileWidget(),
                      text: "LIST TILE WIDGET",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: MyForm(),
                      text: "FORM WIDGET",
                    ),
                    SizedBox(height: 20),
                    MyCustomButton(
                      navigationWidget: TimeDisplay(),
                      text: "DIGITAL CLOCK & DATE",
                    ),
                    SizedBox(height: 20),MyCustomButton(
                      navigationWidget: NewsScreen(),
                      text: "NEWS API",
                    ),
                    SizedBox(height: 20),




                  ]
                  ),
            )
    )
    );
  }
}
