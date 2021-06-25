



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Main.dart';

class Start extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Scaffold(
          body: ListView(
            // scrollDirection: Axis.horizontal,
            children: [
             SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    constraints: BoxConstraints.expand(
                      height: 250.0
                    ),
                    alignment: Alignment.bottomCenter,
                    // margin: EdgeInsets.only(left: 10),
                    // padding: EdgeInsets.only(left: 100),
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: new AssetImage('assets/images/bs.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Container(
                      // margin: EdgeInsets.only(top: 320),
                      child: Container(
                        // margin: EdgeInsets.only(bottom: 130),
                        child: Image(
                          image: AssetImage('assets/images/girl2.png'),
                          height: 250,
                        ),
                      ),
                    ),
                  ),




                  Container(
                      margin: EdgeInsets.only(left: 30.0, top:40.0),
                        child:Text('Reading is Fascinating',
                          style: TextStyle(fontSize: 45, color:Color(0xff305F72), fontWeight: FontWeight.w800), )
                    ),

                  Padding(
                    padding: const EdgeInsets.only(left:30.0, top:0, bottom: 50, right: 25.0),
                    child: Text('World best writers, works and write entertaining literature for you',
                    style:TextStyle(color:Color(0xff4F9DBC))),
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Let\'s start', style: TextStyle(color: Color(0xff305F72), fontSize: 24),),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        constraints: BoxConstraints(),
                        // alignment: Alignment.,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(

                          image: DecorationImage(
                            image: AssetImage('assets/images/clip.png'),
                            // fit: BoxFit.cover
                          ),
                        ),
                        child: InkWell(
                          child: Container(
                            margin: EdgeInsets.only(right: 20),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Main()),
                                );
                              },
                              constraints: BoxConstraints(),
                              elevation: 2.0,
                              fillColor: Color(0xff305F72),
                              child: Icon(
                                Icons.keyboard_arrow_right_outlined,
                                size: 35.0,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(15.0),
                              shape: CircleBorder(),
                            ),
                          ),
                        ),
                      )
                    ],
                  )


                ],
              )
            ),
            ]
          ),
        ),
      ),
    );
  }
}
