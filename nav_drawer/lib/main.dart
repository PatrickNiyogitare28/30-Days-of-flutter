import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main () => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Drawer app"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Patrick Niyo"), 
              accountEmail: Text("patrickniyogitare28@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("P",),

              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  child: Text("N"),
                  backgroundColor: Colors.white
                )
              ],
            ),
            ListTile(
              title: Text("Page One"),
              trailing: new Icon(Icons.arrow_upward),
            ),
            ListTile(
              title: Text("Page Two"),
              trailing: new Icon(Icons.arrow_upward),
            ),
            Divider(),
            ListTile(
              title: Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop()
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Home page"),
        ),
      )
    );
  }
}