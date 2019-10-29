import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigation_drawer/new_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new HomePage(),
      // routes: <String, WidgetBuilder>{
      //   "/a": (BuildContext context) => new NewPage("New Page"),
      // },
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
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        new NewPage("Home Page")));
              },
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
              onTap: () => Navigator.of(context).pop(),
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

// backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.red : Colors.white
