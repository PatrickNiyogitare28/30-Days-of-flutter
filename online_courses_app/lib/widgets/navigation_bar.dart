import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.bookmark_border_outlined,
                  color: Theme.of(context).primaryColor,
                  size: 30,
                ),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(
                  Icons.explore,  
                  color: Theme.of(context).primaryColor,
                  size: 40,
                ),
                onPressed: (){},
              ), 
              IconButton(
                icon: Icon(
                  Icons.notifications_none_outlined,
                  color: Theme.of(context).primaryColor,
                  size: 30,
                ),
                onPressed: (){},
              ),  
            ],
          ),
        ),
      );
  }
}