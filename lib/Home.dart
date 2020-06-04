import 'package:flutter/material.dart';
import 'package:flutterapp/DetailsPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Details()));
          },
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.add),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.description),
                    title: Text('Go to task'),
                    subtitle: Text('a of 3 Tasks'),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.description),
                    title: Text('Go to task'),
                    subtitle: Text('a of 3 Tasks'),
                  )
                ],
              ),
            ),
            Container(
              child: Text('Tab Three'),
            ),
          ],
        ),
        appBar: AppBar(
          title: Text('Home Page'),
          actions: <Widget>[],
          leading: Icon(Icons.calendar_today),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Container(
                  child: Text('Today'),
                ),
              ),
              Tab(
                child: Container(
                  child: Text('Tomorrow'),
                ),
              ),
              Tab(
                child: Container(
                  child: Text('Next Day'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
