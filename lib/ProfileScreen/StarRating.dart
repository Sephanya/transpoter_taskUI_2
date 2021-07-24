import 'package:flutter/cupertino.dart';

class CustomStar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
          Container(
            //left: 20,
            //top: 30,
            child: Image.asset(
              "assets/images/starred.png",
              width: 22,
              height: 25,
            ),
          ),
          Container(
           // left: 28,
            //top: 30,
            child: Image.asset(
              "assets/images/starred.png",
              width: 22,
              height: 25,
            ),
          ),
          Container(
          //  left: 33,
            //top: 30,
            child: Image.asset(
              "assets/images/starred.png",
              width: 22,
              height: 25,
            ),
          ),
          Container(
           // left: 38,
            //top: 30,
            child: Image.asset(
              "assets/images/starred.png",
              width: 22,
              height: 25,
            ),
          ),
          Container(
            //left: 43,
            //top: 30,
            child: Image.asset(
              "assets/images/starwhite.png",
              width: 22,
              height: 25,
            ),
          ),
        ],
      );
  }
}

// Widget CustomStarRow() {
//   return Padding(
//       padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 10),
//       child: Row(
//         children: [
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 5),
//               child: Image.asset(
//                 "assets/images/starred.png",
//                 width: 22,
//                 height: 25,
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 5),
//               child: Image.asset(
//                 "assets/images/starred.png",
//                 width: 22,
//                 height: 25,
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 5),
//               child: Image.asset(
//                 "assets/images/starred.png",
//                 width: 22,
//                 height: 25,
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 5),
//               child: Image.asset(
//                 "assets/images/starred.png",
//                 width: 22,
//                 height: 25,
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 5),
//               child: Image.asset(
//                 "assets/images/starwhite.png",
//                 width: 22,
//                 height: 25,
//               ),
//             ),
//           ),
//         ],
//       ));
// }
