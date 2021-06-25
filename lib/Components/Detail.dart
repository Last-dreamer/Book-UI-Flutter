import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Color(0xffEAF9FE),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Color(0xffEAF9F9), spreadRadius: 1, blurRadius: 1),
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
          ),
        ),


        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      constraints: BoxConstraints(
                          maxWidth: 130,
                          maxHeight: 80
                      ),
                      alignment: Alignment.centerLeft,
                      // margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/top.png'),
                              fit: BoxFit.fill
                          )
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        child: InkWell(
                          onTap: (){
                            Navigator.pop(context, false);
                          },
                          child: Icon(
                              Icons.arrow_back,
                              size: 30,
                              color:Color(0xff305F72)
                          ),
                        ),
                      ),

                    ),

                    Expanded(child: Text('More  Books',
                      style: TextStyle(color:Color(0xff305F72), fontSize: 17, fontWeight: FontWeight.w800),)),

                    Container(
                      constraints: BoxConstraints(
                          maxWidth: 100,
                          maxHeight: 80
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/top.png'),
                              fit: BoxFit.fill
                          )
                      ),
                      child: Icon(
                          Icons.share,
                          size: 30,
                          color:Color(0xff305F72)
                      ),

                    ),
                  ],


                ),

                Container(
                  margin: EdgeInsets.only(right: 20, top:10),
                    child: Text('Top E-Book Reading',
                      style: TextStyle(color:Color(0xff305F72), fontSize: 24, fontWeight: FontWeight.w900),)
                ),



                Row(
                  children: [

                    Container(
                      margin: EdgeInsets.only(left: 30, top: 30),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.7),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Image(
                              image: AssetImage('assets/images/book1.png'),
                              height: 180,
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      width: 30,
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text('The Fetal Tree',
                              style: TextStyle(color: Color(0xff305F72), fontSize: 24, fontWeight: FontWeight.w600),),
                          ),

                          Container(
                            child: Text('by jack Arnott',
                              style: TextStyle(color: Color(0xff4F9DBC), fontSize: 16),),
                          ),


                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.star_rate, color: Color(0xffFFDD00), size: 16,),
                                Icon(Icons.star_rate, color: Color(0xffFFDD00), size: 16,),
                                Icon(Icons.star_rate, color: Color(0xffFFDD00), size: 16,),
                                Icon(Icons.star_rate, color: Color(0xffFFDD00), size: 16,),
                                Icon(Icons.star_rate, color: Colors.grey, size: 16,),
                              ],
                            ),
                          ),

                          Container(
                            child: Text('\$20.00',
                              style: TextStyle(color: Color(0xff2E2E2E), fontSize: 22),),
                          ),

                        ],
                      ),
                    )
                  ],
                ),


                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('More recomended', style: TextStyle(color: Color(0xff305F72), fontSize: 18),),
                      Icon(Icons.more_horiz, color: Color(0xff305F72),)
                    ],
                  ),
                ),


                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 30, bottom:10),
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
                                    ),
                                    child: Image(image: AssetImage('assets/images/book1.png'),
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),


                                  Text('by jack Anrott',
                                    style: TextStyle(color:Color(0xff4F9DBC), fontSize: 12), ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text('The Fetal Tree',
                                      style: TextStyle(color:Color(0xff305F72),fontSize: 14 ),),
                                  )

                                ],
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 30, bottom:10),
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
                                    ),
                                    child: Image(image: AssetImage('assets/images/book1.png'),
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),


                                  Text('by jack Anrott',
                                    style: TextStyle(color:Color(0xff4F9DBC), fontSize: 12), ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text('The Fetal Tree',
                                      style: TextStyle(color:Color(0xff305F72),fontSize: 14 ),),
                                  )

                                ],
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 30, bottom:10),
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
                                    ),
                                    child: Image(image: AssetImage('assets/images/book1.png'),
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),


                                  Text('by jack Anrott',
                                    style: TextStyle(color:Color(0xff4F9DBC), fontSize: 12), ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text('The Fetal Tree',
                                      style: TextStyle(color:Color(0xff305F72),fontSize: 14 ),),
                                  )

                                ],
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 30, bottom:10),
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
                                    ),
                                    child: Image(image: AssetImage('assets/images/book1.png'),
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),


                                  Text('by jack Anrott',
                                    style: TextStyle(color:Color(0xff4F9DBC), fontSize: 12), ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text('The Fetal Tree',
                                      style: TextStyle(color:Color(0xff305F72),fontSize: 14 ),),
                                  )

                                ],
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 30, bottom:10),
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
                                    ),
                                    child: Image(image: AssetImage('assets/images/book1.png'),
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),


                                  Text('by jack Anrott',
                                    style: TextStyle(color:Color(0xff4F9DBC), fontSize: 12), ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text('The Fetal Tree',
                                      style: TextStyle(color:Color(0xff305F72),fontSize: 14 ),),
                                  )

                                ],
                              ),
                            ),
                          ),




                        ],
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
