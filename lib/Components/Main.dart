import 'package:book/Components/Detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Main extends StatefulWidget {


  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {

  int _currentIndex = 0;

  final _height = 300.0;
  final _controller = ScrollController();
  void onTabTapped(int index) {
    setState(() {
      print('sss${index}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),

      home: Scaffold(
        backgroundColor: Color(0xffEAF9FE),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Color(0xff4F9DBC), spreadRadius: 10, blurRadius: 20),
            ],
          ),



    child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
    ),
    child:BottomNavigationBar(
          // type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          currentIndex: _currentIndex,

          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.explore),
              title: new Text('Explore'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.chrome_reader_mode),
              title: new Text('Reading'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                title: Text('Bookmark')
            )
          ],
        )
    )),

      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(

              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      constraints: BoxConstraints(
                        maxWidth: 112,
                        maxHeight: 58
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/top.png'),
                          fit: BoxFit.fill
                        )
                      ),
                      child: InkWell(
                        onTap: (){},
                        child: Icon(
                            Icons.menu,
                            size: 30,
                            color:Color(0xff305F72)
                        ),
                      ),

                    ),




                    Container(
                      constraints: BoxConstraints(
                          maxWidth: 112,
                          maxHeight: 58
                      ),
                      alignment: Alignment.center,
                      // margin: EdgeInsets.only(right: 35),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/top.png'),
                              fit: BoxFit.cover
                          )
                      ),
                      child:
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Image(
                          image: AssetImage('assets/images/girl2.png'),
                          width: 30,
                        ),
                      )

                    ),


                  ],
                ),

                Container(
                    width: 320,
                    height: 50,
                    padding: EdgeInsets.all(0),
                    // margin: EdgeInsets.only(),
                    child: TextField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        hintText: 'Search Books Here...',
                        suffixIcon: Icon(Icons.search, color: Color(0xff305F72),),
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white70,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.green, width: 2),
                        ),
                      ),)
                ),

                Container(
                  margin: EdgeInsets.only(left: 30, top: 5,bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Categories', style: TextStyle(fontSize: 24,
                          color:Color(0xff305F72), fontWeight: FontWeight.w800),)
                    ],
                  ),
                ),


                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: SingleChildScrollView(

                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      spacing: 30.0,
                      runSpacing: 3.0,
                      children: [

                        InkWell(
                          onTap: (){},
                          child: Chip(labelPadding: EdgeInsets.all(2.0),
                            label: Text('Comic',
                              style: TextStyle(color: Colors.white,),),
                            backgroundColor: Color(0xff305F72),
                            elevation: 6.0, shadowColor: Colors.black38,
                            padding: EdgeInsets.only(left:22.0, right: 22, top: 8, bottom: 8),
                          ),
                        ),

                        InkWell(
                          onTap: (){},
                          child: Chip(labelPadding: EdgeInsets.all(2.0),
                            label: Text('Recipe',
                              style: TextStyle(color: Color(0xff305F72),),),
                            backgroundColor: Color(0xffCBE5F3),
                            elevation: 6.0, shadowColor: Colors.black38,
                            padding: EdgeInsets.only(left:22.0, right: 22, top: 8, bottom: 8),
                          ),
                        ),

                        Chip(labelPadding: EdgeInsets.all(2.0),
                          label: Text('Novel',
                            style: TextStyle(color: Color(0xff305F72),),),
                          backgroundColor: Color(0xffCBE5F3),
                          elevation: 6.0, shadowColor: Colors.black38,
                          padding: EdgeInsets.only(left:22.0, right: 22, top: 8, bottom: 8),
                        ),

                        Chip(labelPadding: EdgeInsets.all(2.0),
                          label: Text('Bio',
                            style: TextStyle(color: Color(0xff305F72),),),
                          backgroundColor: Color(0xffCBE5F3),
                          elevation: 6.0, shadowColor: Colors.black38,
                          padding: EdgeInsets.only(left:22.0, right: 22, top: 8, bottom: 8),
                        ),


                      ],
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30, top:10, bottom: 0),
                      child: Text('Trending Books' ,
                        style: TextStyle(color: Color(0xff305F72), fontSize: 24, fontWeight: FontWeight.w600),),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [


                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 30, bottom:20),
                        child: Column(
                          children: [

                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 0,
                                    blurRadius: 0,
                                    offset: Offset(0, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                              child:
                              Image(image: AssetImage('assets/images/book1.png'),
                                width: 100,
                                height: 150,
                              ),
                            ),


                            Text('by jack Anrott',
                              style: TextStyle(color:Color(0xff4F9DBC), fontSize: 14), ),
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text('The Fetal Tree',
                                style: TextStyle(color:Color(0xff305F72),fontSize: 16 ),),
                            )

                          ],
                        ),
                      ),
                    ),



                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 30, bottom:20),
                        child: Column(
                          children: [

                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 0,
                                    blurRadius: 0,
                                    offset: Offset(0, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                              child:
                              Image(image: AssetImage('assets/images/book1.png'),
                                width: 100,
                                height: 150,
                              ),
                            ),


                            Text('by jack Anrott',
                              style: TextStyle(color:Color(0xff4F9DBC), fontSize: 14), ),
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text('The Fetal Tree',
                                style: TextStyle(color:Color(0xff305F72),fontSize: 16 ),),
                            )

                          ],
                        ),
                      ),
                    ),

                  ],
                ),


                // recomended
                Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                          Container(
                            height: _height,
                            decoration: BoxDecoration(
                              color: Color(0xff4F9DBC),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25)
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 30, top:20, right: 30 ,bottom: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('More recomended', style: TextStyle(color: Colors.white),),
                                      Icon(Icons.more_horiz, color: Colors.white,)
                                    ],
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 30, right: 30),

                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Detail()));
                                    },
                                    child: Card(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15.0)
                                      ),
                                      child: Row(

                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(15),
                                            child: Column(
                                              children: [
                                                Image(image: AssetImage('assets/images/book1.png'),
                                                  height: 80,)
                                              ],
                                            ),
                                          ),

                                          Container(
                                            child: Column(
                                              children: [
                                                Text('The Fetal Tree', style: TextStyle(fontSize: 16, color: Colors.black),),
                                                Text('by jack Amott', style: TextStyle(fontSize: 14, color:Color(0xff4F9DBC)),),
                                                Container(
                                                  margin: EdgeInsets.only(right: 20),
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Icon(Icons.star_rate, color: Color(0xffFFDD00), size: 14,),
                                                      Icon(Icons.star_rate, color: Color(0xffFFDD00), size: 14,),
                                                      Icon(Icons.star_rate, color: Color(0xffFFDD00), size: 14,),
                                                      Icon(Icons.star_rate, color: Color(0xffFFDD00), size: 14,),
                                                      Icon(Icons.star_rate, color: Colors.grey, size: 14,),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),


                                          Expanded(
                                            // margin: EdgeInsets.only(left: 60),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  height: 60,
                                                  child: CircularPercentIndicator(
                                                    radius: 60,
                                                    backgroundColor: Colors.grey,
                                                    lineWidth: 6,
                                                    progressColor: Colors.amberAccent,
                                                    percent: 0.6,
                                                    circularStrokeCap: CircularStrokeCap.round,
                                                    animation: true,
                                                    center: Text('69%', style: TextStyle(color: Colors.amberAccent),),
                                                  ),
                                                ),


                                              ],
                                            ),

                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                )


                              ],
                            ),
                          ),

                      
                      
                      Positioned(
                        top: -15,
                        child: InkWell(
                          onTap: (){
                            _animateToIndex(500.0);
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color(0xff305F72),
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Icon(Icons.arrow_upward, size: 24, color:Colors.white)
                      ),
                        ),)

                    ],
                    overflow: Overflow.visible,
                  ),
                )

              ]),
        ],
      )
      ),
    );
  }


  _animateToIndex(i) => _controller.animateTo(_height * i, duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
}

