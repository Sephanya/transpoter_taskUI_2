

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget{
 final String text;

 const CustomBox({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 15),
      child: Container(
        width: 700,
        height: 203,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
          color : Colors.white,
        ),
        child: Stack(
          children: <Widget>[
          Positioned(
              left: 10,
              top: 10,
              child: Text(
                'Order Status:',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
          ),
            Positioned(
              left: 90,
              top: 10,
              child: Text(
                text,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Positioned(
                left: 10,
                top: 35,
                child: Container(
                  height: 0.5,
                  width: 310,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80),
                    ),
                    color: Color.fromRGBO(215, 218, 234, 1),
                  ),
                )
            ),
            Positioned(
              left: 10,
              top: 50,
              child: Container(
                width: 50,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  color: Color.fromRGBO(236, 240, 248, 1.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 3,right: 10,bottom: 3),
                  child: Image.asset(
                    "assets/images/phonepic.png",
                    width: 5,
                    height: 30,
                  ),
                ),
              ),
            ),
            Positioned(
                left: 80,
                top: 55,
                child: Text(  'Apple iPhone 12 Pro (128GB)',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,letterSpacing: 1.0,
                      fontWeight: FontWeight.bold),
                )
            ),
            Positioned(
                left: 80,
                top: 75,
                child: Text(  '- Graphite',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.black,letterSpacing: 1.0,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )
            ),
            Positioned(
              left: 10,
              top: 125,
              child: Container(
                  width: 310,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: Color.fromRGBO(236, 240, 248, 1.0),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          left: 44,
                          top: 13,
                          child: Text(  'From',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.grey,letterSpacing: 1.0,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          )
                      ),
                      Positioned(
                          left: 44,
                          top: 28,
                          child: Text(  'New York, USA',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                      ),
                      Positioned(
                          left: 10,
                          top: 8,
                          child: Image.asset(
                            "assets/images/flightup.png",
                            width: 25,
                            height: 45,
                          ),
                      ),
                      Positioned(
                          left: 158,
                          top: 10,
                          child: Container(
                            height: 40,
                            width: 1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(80),
                                topRight: Radius.circular(80),
                                bottomLeft: Radius.circular(80),
                                bottomRight: Radius.circular(80),
                              ),
                              color: Color.fromRGBO(215, 218, 234, 1),
                            ),
                          )
                      ),
                      Positioned(
                          left: 208,
                          top: 13,
                          child: Text(  'Deliver to',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.grey,letterSpacing: 1.0,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          )
                      ),
                      Positioned(
                          left: 208,
                          top: 28,
                          child: Text(  'Modrid,Spain',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                      ),
                      Positioned(
                          left: 175,
                          top: 10,
                          child: Image.asset(
                            "assets/images/flightdown.png",
                            width: 20,
                            height: 35,
                          ),
                      ),


                    ],
                  )
              ),
            ),


          ],
        ),
      ),
    );
  }

}