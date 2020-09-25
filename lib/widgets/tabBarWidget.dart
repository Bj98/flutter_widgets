import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar'),
          bottom: TabBar(
            isScrollable: true,
            //controller: TabController(initialIndex: 2),
            indicatorColor: Colors.blue,
            tabs: [
              Tab(
                child: Text('one'),
              ),
              Tab(
                child: Text('two '),
              ),
              Tab(
                child: Text('three'),
              ),
              Tab(
                child: Text('four'),
              ),
              Tab(
                child: Text('five'),
              ),
              Tab(
                child: Text('six'),
              ),
              Tab(
                child: Text('seven'),
              ),
              Tab(
                child: Text('eight'),
              ),
              Tab(
                child: Text('nine'),
              ),
              Tab(
                child: Text('ten'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.ac_unit),
            Icon(Icons.ac_unit),
            Icon(Icons.ac_unit),
            Icon(Icons.ac_unit),
            Icon(Icons.ac_unit),
            Icon(Icons.ac_unit),
            Icon(Icons.ac_unit),
            Icon(Icons.ac_unit),
            Icon(Icons.ac_unit),
            Icon(Icons.ac_unit),
          ],
        ),
      ),

    );
  }
}
