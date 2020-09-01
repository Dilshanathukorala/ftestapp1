import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );

  }
}




class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState()=> _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage>{
  @override
 Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                   children: <Widget>[
                     Container(
          height: 200.0,
          width: double.infinity,                             // make coloer bar
          color: Colors.pinkAccent,
                     ),
                     Positioned(
                       bottom: 55.0,
                       right: 100.0,
                       child: Container(
                         height: 350.0,
                         width: 350.0,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(320),          // circle
                           color: Colors.cyan,
                         ),
                       ),
                     ),
                     Positioned(
                       bottom: 100,
                       left: 130.0,
                       child: Container(
                         height: 290.0,
                         width: 300.0,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(300),             // curcle
                           color: Colors.yellowAccent
                         ),
                       ),
                     ),

                     Positioned(
                       bottom: 100,
                       left: 150.0,
                       child: Container(
                         height: 330.0,
                         width: 300.0,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(300),             // curcle
                             color: Colors.blueAccent
                         ),
                       ),
                     ),


                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         SizedBox(height: 25.0),
                         Row(
                           children: <Widget>[
                             SizedBox(width: 25.0),
                             Container(
                               alignment: Alignment.topLeft,
                               height: 50.0,
                               width: 50.0,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(25),
                                 border: Border.all(
                                   color: Colors.white,
                                   style: BorderStyle.solid,
                                   width: 2.0
                                 ),
                                 image: DecorationImage(
                                   image: AssetImage('Images/pp.jpg'),       //Profile Picture
                                 )
                               ),
                             ),
                             SizedBox(
                               width: MediaQuery.of(context).size.width-140,),
                             Container(
                               alignment: Alignment.topRight,
                               child: IconButton(
                                 icon: Icon(Icons.menu),
                                 onPressed: (){},
                                 color: Colors.white,
                                 iconSize: 28.0,
                               ),
                             ),
                             SizedBox(height: 15.0,)
                           ],
                         ),


                         SizedBox(height: 45.0),
                         Padding(
                           padding: EdgeInsets.only(left: 15.0),
                           child: Text(
                             "welcome",
                             style: TextStyle(
                               fontSize: 25.0,
                                 fontWeight: FontWeight.bold,
                             ),
                           ),
                         ),
                         SizedBox(height: 25.0),
                         Padding(
                           padding: EdgeInsets.only(left: 15.0, right: 15.0),
                           child: Material(
                             elevation: 5.0,
                             borderRadius: BorderRadius.circular(25),
                             child: TextFormField(
                               decoration: InputDecoration(
                                 border: InputBorder.none,
                                 prefixIcon: Icon(
                                   Icons.search,
                                   color: Colors.amber,
                                   size: 30.0,
                                 ),
                                   contentPadding:
                                   EdgeInsets.only(left: 20,top: 20, bottom: 10),   //palece holder
                                 hintText: 'Search',
                                 hintStyle: TextStyle(
                                   color: Colors.purpleAccent,
                                 )
                               ),
                             ),
                           ),
                         ),
                         SizedBox(height: 10.0),


                       ],
                     ),
                   ],
                 ),
                SizedBox(height: 10),
                Stack(
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Material(
                      elevation: 1.0,
                      child: Container(height: 70.0,color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 75.0,
                          width: MediaQuery.of(context).size.width/2,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('Images/M_1.jpg'),
                                  )
                                ),
                              ),
                              Text(
                                'Gents',
                                  style: TextStyle(fontFamily: 'Quicksand'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 75.0,
                          width: MediaQuery.of(context).size.width/4,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('Images/G_2.jpg'),
                                  ),
                                ),
                              ),
                          Text(
                            'ladies',
                            style: TextStyle(fontFamily: 'Quicksand'),


                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                specialItemCard2('frock', 'Images/G_1.jpg', false),
                specialItemCard('Gents', 'Images/M_1.jpg', true),
                specialItemCard3('Youngers', 'Images/SB_1.jpg', false),
                specialItemCard4('Girls', 'Images/G_3.jpg', true),

                ],
              ),
             ],
            ),
         );
  }
}

Widget specialItemCard(String title, String imagePath, bool isLoved) {
  return Padding(
    padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
    child: Container(
      height: 140.0,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            width: 140.0,
            height: 150.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover
                )
            ),
          ),
          SizedBox(width: 4.0),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 45.0),
                  Material(
                    elevation: isLoved ? 0.0 : 2.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color: isLoved ? Colors.grey.withOpacity(0.3) : Colors
                              .white

                      ),
                      child: Center(
                        child: isLoved ? Icon(Icons.favorite_border) : Icon(
                            Icons.favorite, color: Colors.red),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 5.0),
              Container(
                width: 180.0,
                child: Text(
                    "this is specical deal",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 13.0,
                    )
                ),
              ),
              SizedBox(height: 5.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 40.0),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        '\$300',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: 100.0,
                    color: Colors.black,
                    child: Text(

                      "add to cart",
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,

                      ),
                    ),

                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}




Widget specialItemCard2(String title, String imagePath, bool isLoved){
  return Padding(
    padding: EdgeInsets.only(left: 20.0, right: 20.0,top: 15.0),
    child: Container(
      height: 140.0,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            width: 140.0,
            height: 150.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover
                )
            ),
          ),
          SizedBox( width: 4.0),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 45.0),
                  Material(
                    elevation:  isLoved ? 0.0 : 2.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color: isLoved ? Colors.grey.withOpacity(0.3):Colors.white

                      ),
                      child: Center(
                        child: isLoved ? Icon(Icons.favorite_border):Icon(Icons.favorite,color: Colors.red),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 5.0),
              Container(
                width: 180.0,
                child: Text(
                    "this is specical deal",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color:  Colors.redAccent,
                      fontSize: 13.0,
                    )
                ),
              ),
              SizedBox(height: 5.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 40.0),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        '\$300',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: 100.0,
                    color: Colors.black,
                    child: Text(

                      "add to cart",
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,

                      ),
                    ),

                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );


} //feelds frock



Widget specialItemCard3(String title, String imagePath, bool isLoved){
  return Padding(
    padding: EdgeInsets.only(left: 20.0, right: 20.0,top: 15.0),
    child: Container(
      height: 140.0,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            width: 140.0,
            height: 150.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover
                )
            ),
          ),
          SizedBox( width: 4.0),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 45.0),
                  Material(
                    elevation:  isLoved ? 0.0 : 2.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color: isLoved ? Colors.grey.withOpacity(0.3):Colors.white

                      ),
                      child: Center(
                        child: isLoved ? Icon(Icons.favorite_border):Icon(Icons.favorite,color: Colors.red),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 5.0),
              Container(
                width: 180.0,
                child: Text(
                    "this is specical deal",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color:  Colors.redAccent,
                      fontSize: 13.0,
                    )
                ),
              ),
              SizedBox(height: 5.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 40.0),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        '\$300',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: 100.0,
                    color: Colors.black,
                    child: Text(

                      "add to cart",
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,

                      ),
                    ),

                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );


}  //feelds Gents


Widget specialItemCard4(String title, String imagePath, bool isLoved){
  return Padding(
    padding: EdgeInsets.only(left: 20.0, right: 20.0,top: 15.0),
    child: Container(
      height: 140.0,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            width: 140.0,
            height: 150.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover
                )
            ),
          ),
          SizedBox( width: 4.0),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 45.0),
                  Material(
                    elevation:  isLoved ? 0.0 : 2.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color: isLoved ? Colors.grey.withOpacity(0.3):Colors.white

                      ),
                      child: Center(
                        child: isLoved ? Icon(Icons.favorite_border):Icon(Icons.favorite,color: Colors.red),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 5.0),
              Container(
                width: 180.0,
                child: Text(
                    "this is specical deal",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color:  Colors.redAccent,
                      fontSize: 13.0,
                    )
                ),
              ),
              SizedBox(height: 5.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 40.0),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        '\$300',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: 100.0,
                    color: Colors.black,
                    child: Text(

                      "add to cart",
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,

                      ),
                    ),

                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );


}