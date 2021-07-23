

import 'package:flutter/cupertino.dart';

class CustomStar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
    child: Row(
      children: <Widget>[
        Positioned(
          left: 20,
            top: 30,
            child: Image.asset(
              "assets/images/starred.png",
              width: 22,
              height: 25,
            ),

        ),
        Positioned(
          left: 28,
          top: 30,
          child: Image.asset(
            "assets/images/starred.png",
            width: 22,
            height: 25,
          ),

        ),
        Positioned(
          left: 33,
          top: 30,
          child: Image.asset(
            "assets/images/starred.png",
            width: 22,
            height: 25,
          ),

        ),
        Positioned(
          left: 38,
          top: 30,
          child: Image.asset(
            "assets/images/starred.png",
            width: 22,
            height: 25,
          ),

        ),
        Positioned(
          left: 43,
          top: 30,
          child: Image.asset(
            "assets/images/starwhite.png",
            width: 22,
            height: 25,
          ),

        ),
      ],
    ),
    );
  }

}