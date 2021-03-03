import 'package:flutter/material.dart';

import './transaction.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
      id: 't1', 
      title:'New shoes', 
      amount: 69.05, 
      date: DateTime.now()),
    Transaction(
      id: 't2', 
      title:'Weekly Groceries', 
      amount: 100, 
      date: DateTime.now())

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter app'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            child: Container(
              color: Colors.blue,
              width: double.infinity,
              child: Text('CHART')),
              elevation: 5,
          ),
          Card(
            color: Colors.red,
            child: Text('LIST OF TX'),
          )
        ],
      ),
    );
  }
}
