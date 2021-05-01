import 'package:flutter/material.dart';

class CoursesHeader extends StatelessWidget {
  const CoursesHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 120,
                        child: Container(
                          child: Text("Your Courses",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(39, 46, 61, 1)
                            
                          )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          child: Image.asset("assets/icons/progress.png", width: 120,)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text('Overoll progress', 
                             style: TextStyle(
                               fontSize: 16,
                               color: Colors.black38,
                               
                             ),
                            ),
                        ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(190, 236, 247, 1),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 2, left: 5, right: 5),
                            child: Image.asset("assets/images/avatar-img.png",
                            width: 70,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
  }
}