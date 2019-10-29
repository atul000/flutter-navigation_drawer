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
      drawer: new Drawer(),
      body: new Container(
        child: new Center(
          child: new Text("Home"),
        ),
      ),
    );
  }
}
