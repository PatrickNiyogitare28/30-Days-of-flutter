import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './new_page.dart';
void main () => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.grey[50] : null
      ),
      home: new HomePage(),
      // routes: <String, WidgetBuilder>{
      //   "/a": (BuildContext context) => new NewPage("New Page")
      // }
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
                backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.deepPurple : Colors.white,
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
              onTap: () => {
                Navigator.of(context).pop(),
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext contex) =>  NewPage("Page One"))
                )
                },
            ),
            ListTile(
              title: Text("Page Two"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () => {
                Navigator.of(context).pop(),
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext contex) =>  NewPage("Page Two"))
                )
              },
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