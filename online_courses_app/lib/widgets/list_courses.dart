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
                             color: Color.fromRGBO(196, 196, 196,0.1),
                             borderRadius: BorderRadius.circular(20),
                           ),
                           child:  Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
        child: Column(
          
          children: [
            Align(
               alignment: Alignment.centerLeft,
               child: Text('CODING',
               style: TextStyle(
                 fontSize: 11,
                 color: Colors.black54
               )
               ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('Basics   of       HTML  and CSS',
                 style: TextStyle(
                 fontSize: 15,
                 color: Colors.black87,
                 fontWeight: FontWeight.bold,
             ),
             ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Align(
                 alignment: Alignment.centerLeft,
                 child: Text('In this course we wil learn the basic toos for coders',
                 style: TextStyle(
                   fontSize: 12,
                   color: Colors.black54
                 )
                 ),
            ),
              ),
             Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/images/default.png",
                    width: 30,
               ),
                  ),
                ),
             )
          ],
        ),
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