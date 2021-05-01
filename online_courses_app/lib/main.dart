import 'package:flutter/material.dart';

import './screens/courses_list.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromRGBO(30, 51, 99, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CoursesList(),
    );
  }
}



