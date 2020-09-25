import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: const <Widget>[
      Card(
        child: ListTile(title: Text('Normal!')),
      ),
      Card(
        child: ListTile(
          leading: FlutterLogo(),
          title: Text('Good'),
        ),
      ),
      Card(
        child: ListTile(
          title: Text('Better'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: FlutterLogo(),
          title: Text('Best'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          title: Text('Awesome'),
          dense: true,
        ),
      ),
      Card(
        child: ListTile(
          leading: FlutterLogo(size: 56.0),
          title: Text('Pals'),
          subtitle: Text('To share everything'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: FlutterLogo(size: 72.0),
          title: Text('Family'),
          subtitle: Text('Do not do anything wrong to let them down.Work Hard! '),
          trailing: Icon(Icons.more_vert),
          isThreeLine: true,
        ),
      ),
    ]);
  }
}
