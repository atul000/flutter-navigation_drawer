import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Navigation Drawer"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 2.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Atul"),
              accountEmail: new Text("atulbeniwal43@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: AssetImage("assets/atul.JPG"),
              ),
            ),
            new ListTile(
              title: new Text("Home"),
              trailing: new Icon(Icons.home),
            ),
            new ListTile(
              title: new Text("About"),
              trailing: new Icon(Icons.arrow_drop_down_circle),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Search"),
              trailing: new Icon(Icons.search),
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home"),
        ),
      ),
    );
  }
}
