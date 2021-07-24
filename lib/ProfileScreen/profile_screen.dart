import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../CustomFeilds/CustomBox.dart';
import '../CustomFeilds/CustomIndicator.dart';
import 'StarRating.dart';



class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body:Container(
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                TopHeader(),
                ProfileRow(),
                LineSeperator(),
                VerifyBox(),
                UpgradePlan(),
                SaveAddress(),
                ShopDashboard(),
                //TabbarContent(),
                Padding(
                    padding: const EdgeInsets.only(left: 10,),
                  child: Container(
                    child: TabBar(

                        isScrollable: true,
                        labelStyle: TextStyle(fontSize: 17,fontFamily: 'Sofia Pro', fontWeight: FontWeight.normal),
                        labelColor: Colors.black87,
                        //indicatorColor: Color.fromRGBO(97, 54, 72, 1.0),
                        indicatorPadding: EdgeInsets.only(left: 10),
                        indicator: CustomIndicator(
                          indicatorSize: CustomIndicatorSize.full,
                          indicatorHeight: 3.0,
                          indicatorColor: Color.fromRGBO(97, 54, 72, 1.0),
                        ),
                        tabs: [
                          new Container(
                            width: 70,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: new Tab(
                                text: 'Orders',
                              ),
                            ),
                          ),
                          new Container(
                            width: 70,
                            child: new Tab(
                              text: 'Travels',
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                Container(
                  child: Container(
                    height: 1000,
                    color: Color.fromRGBO(242, 243, 247, 1.0),
                    child: Column(
                      children: [
                        CustomBox(text: 'Pending'),
                        CustomBox(text: 'In-Progress'),
                      ]
                    ),
                  ),


                ),



              ],
            ),
          )
      ),
    );
  }
}

Widget TopHeader() {
  return Padding(
    padding: const EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 10),
    child: Row(
      children: <Widget>[
        new Icon(Icons.arrow_back_ios, size: 26.0, color: Colors.black87),
        new Expanded(
          child: new Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: new Text(
              "Profile",
              style: new TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Sofia Pro',
                  color: Colors.black87,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Icon(Icons.more_vert, color: Colors.grey),
      ],
    ),
  );
}

Widget ProfileRow() {
  return Padding(
    padding: EdgeInsets.only(left: 20,right: 20,top: 10),
    child: Row(
      children: <Widget>[
        CircleAvatar(
          minRadius: 35.0,
          maxRadius: 37.0,
          backgroundImage: AssetImage("assets/images/profilepic.png"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 13),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Austin Howards',
                style: new TextStyle(
                    fontSize: 19.0,
                    color: Colors.black87,
                    fontFamily: 'Sofia Pro',
                    fontWeight: FontWeight.w700),
              ),
              //StarDisplay(),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                  child: CustomStar(),

              )
            ],
          ),
        ),
      ],
    ),
  );
}

// class StarDisplay extends StatelessWidget {
//   final int value;
//   const StarDisplay({Key? key, this.value = 4})
//       : assert(value != null),
//         super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: List.generate(5, (index) {
//         return Icon(
//           index < value ? Icons.star : Icons.star_border,
//         );
//       }),
//     );
//   }
// }

Widget LineSeperator() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, top: 100),
    child: Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          child: Container(
            width: 320,
            height: 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80),
                topRight: Radius.circular(80),
                bottomLeft: Radius.circular(80),
                bottomRight: Radius.circular(80),
              ),
              color: Color.fromRGBO(215, 218, 234, 1),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget VerifyBox() {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
    child: Container(
      width: 340,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: Color.fromRGBO(220, 232, 250, 1.0),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/verify.png",
                  height: 22,
                  width: 22,
                )),
          ),
          new Expanded(
            child: new Padding(
              padding: const EdgeInsets.only(left: 3.0),
              child: new Text(
                "Verify the Profile",
                style: new TextStyle(
                    fontSize: 16.0,
                    color: Color.fromRGBO(15, 114, 185, 1.0),
                    fontFamily: 'Sofia Pro',
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Color.fromRGBO(15, 114, 185, 1.0),
              size: 14,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget UpgradePlan() {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/upgrade.png",
                height: 20,
                width: 25,
              )),
        ),
        new Expanded(
          child: new Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: new Text(
              "Upgrade Plan",
              style: new TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Sofia Pro',
                  color: Colors.black87,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget SaveAddress() {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, top: 1),
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/saveaddress.png",
                height: 20,
                width: 25,
              )),
        ),
        new Expanded(
          child: new Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: new Text(
              "Save Addresses",
              style: new TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Sofia Pro',
                  color: Colors.black87,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget ShopDashboard() {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, top: 1),
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/dashboard.png",
                height: 20,
                width: 25,
              )),
        ),
        new Expanded(
          child: new Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: new Text(
              "Shop DashBoard",
              style: new TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Sofia Pro',
                  color: Colors.black87,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ],
    ),
  );
}
// Widget Tabbarviews(){
//   return Padding(
//     padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
//     child: Container(
//       child: TabBar(
//
//            isScrollable: true,
//            labelStyle: TextStyle(fontSize: 16, fontFamily: 'Sofia Pro',fontWeight: FontWeight.normal),
//            labelColor: Colors.black87,
//            indicatorColor: Color.fromRGBO(97, 54, 72, 1.0),
//            indicatorPadding: EdgeInsets.only(left: 5),
//            tabs: [
//              new Container(
//                width: 80,
//                child: new Tab(
//                  text: 'Orders',
//                ),
//              ),
//              new Container(
//                width: 80,
//                child: new Tab(
//                  text: 'Travels',
//                ),
//              ),
//        ]
//        ),
//
//
//      ),
//
//
//   );
// }
// //
// // Widget TabbarContent(){
// //   return Padding(
// //     padding: const EdgeInsets.only(left: 0, right: 0, top: 498),
// //     child: Container(
// //       child:  TabBarView(
// //             children: <Widget>[
// //               SingleChildScrollView(
// //                 child: Container(
// //                   height: 1000,
// //                   color: Colors.grey[300],
// //                   child: Column(
// //                     children: [
// //                       CustomBox(text: 'Pending'),
// //                       CustomBox(text: 'In-Progress'),
// //
// //                     ],
// //                   ),
// //
// //                 ),
// //               ),
// //               Container(
// //                 child: Text('FisrtScreen'),
// //               ),
// //
// //             ],
// //         )
// //
// //       ),
// //
// //
// //   );
// // }
// // class TabContent extends StatelessWidget{
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: TabBarView(
// //         children: <Widget>[
// //           SingleChildScrollView(
// //             child: Container(
// //               height: 1000,
// //               color: Colors.grey[300],
// //               child: Column(
// //                 children: [
// //                   CustomBox(text: 'Pending'),
// //                   CustomBox(text: 'In-Progress'),
// //
// //                 ],
// //               ),
// //
// //             ),
// //           ),
// //           Container(
// //             child: Text('FisrtScreen'),
// //           ),
// //
// //         ],
// //       ),
// //     );
// //   }
// //
// // }
