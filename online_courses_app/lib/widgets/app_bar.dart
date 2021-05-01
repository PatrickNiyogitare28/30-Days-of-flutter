import 'package:flutter/material.dart';

class CourseListAppBar extends StatelessWidget {
  const CourseListAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      ],
    );
  }
}