import 'package:flutter/material.dart';

class CourseOneCard extends StatelessWidget {
  const CourseOneCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 180,
      decoration: BoxDecoration(
        color: Color.fromRGBO(49, 168, 232,0.8),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
        child: Column(
          
          children: [
            Align(
               alignment: Alignment.centerLeft,
               child: Text('CODING',
               style: TextStyle(
                 fontSize: 11,
                 color: Colors.white
               )
               ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('Introduction to JavaScript',
                 style: TextStyle(
                 fontSize: 15,
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
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
   ); 
  }
}