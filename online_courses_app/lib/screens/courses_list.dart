import 'package:flutter/material.dart';

import '../widgets/courses_header.dart';

class CoursesList extends StatelessWidget {
  const CoursesList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Image.asset("assets/icons/menu.png", width: 35,),
      elevation: 0,
      backgroundColor: Colors.white,
      
      actions: <Widget>[
         Container(
           child: Icon(Icons.search, 
           color: Colors.black45,
           size: 34,
           ),
         )
      ],),
      body: Column(
        children: <Widget>[
           Container(
             decoration: BoxDecoration(
               color: Colors.white
             ),
             child: CoursesHeader()),
        ],
      )
      );
  }
}