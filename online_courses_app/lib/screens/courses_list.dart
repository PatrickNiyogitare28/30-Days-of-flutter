import 'package:flutter/material.dart';

import '../widgets/courses_header.dart';
import '../widgets/list_courses.dart';
import '../widgets/navigation_bar.dart';

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
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
             Container(
               decoration: BoxDecoration(
                 color: Colors.white
               ),
               child: CoursesHeader()
               ),
               ListCourses()
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(),
      );
  }
}