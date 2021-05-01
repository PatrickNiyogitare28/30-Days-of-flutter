import 'package:flutter/material.dart';

import '../widgets/course_1_card.dart';

class ListCourses extends StatelessWidget {
  const ListCourses({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                Container(
                  width: 170,
                   child: Column(
                     children: [
                       CourseOneCard(),
                       Padding(
                         padding: const EdgeInsets.only(top: 20),
                         child: Container(
                           height: 200,
                           decoration: BoxDecoration(
                             color: Color.fromRGBO(196, 196, 196,0.5),
                             borderRadius: BorderRadius.circular(20),
                           ),
                         ),
                       )
                     ],
                   ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 180,
                    // height: 40,
                    child: Column(
                     children: [
                       Container(
                         height: 200,
                         decoration: BoxDecoration(
                           color: Color.fromRGBO(196, 196, 196,0.5),
                           borderRadius: BorderRadius.circular(20)
                         ),
                       ), 
                       Padding(
                         padding: const EdgeInsets.only(top: 20),
                         child: Container(
                           height: 100,
                           decoration: BoxDecoration(
                             color: Color.fromRGBO(196, 196, 196,0.5),
                             borderRadius: BorderRadius.circular(20),
                           ),
                         ),
                       )
                     ],
                   ),
                  ),
                  
                ),
                
              ],
            ),
          ),
        ),
      
    );
  }
}