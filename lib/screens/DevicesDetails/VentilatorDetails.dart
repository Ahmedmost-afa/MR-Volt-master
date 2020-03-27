
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class VentilatorsInfo extends StatefulWidget {
  @override
  _VentilatorsInfo createState() => _VentilatorsInfo();
}

class _VentilatorsInfo extends State<VentilatorsInfo> {
  Widget _colorWidget(Color color, {bool isSelected = false}) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: color.withAlpha(150),
      child: isSelected
          ? Icon(
        Icons.check_circle,
        color: color,
        size: 18,
      )
          : CircleAvatar(radius: 7, backgroundColor: color),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget image_slider_carousel = Container(
      height: 300.0,
      width: 350.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/ventilator.jpg'),
          AssetImage('images/ventilator.jpg'),
          AssetImage('images/ventilator.jpg'),
        ],
        indicatorBgPadding: 2.5,
        autoplay: true,
        dotColor: Colors.blueGrey,
        dotBgColor: Colors.grey,
        dotSize: 4.0,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(
          milliseconds: 3000,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,

//        leading: IconButton(
//          icon: Icon(Icons.arrow_back),
//          alignment: Alignment.topLeft,
//          padding: EdgeInsets.all(10),
//          onPressed: () {},
//        ),
        title: Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'Oswald',
            letterSpacing: 3,
            fontSize: 25,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          image_slider_carousel,
          SizedBox(),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(23.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Ventilator',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.amberAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amberAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amberAccent,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.amberAccent,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "\EGP 20000",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Available Colors',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    _colorWidget(
                      Colors.yellow,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    _colorWidget(
                      Colors.blueGrey,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    _colorWidget(
                      Colors.black,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 9, 9, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Description',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'In the digital jungle, navigate your way effortlessly, with the Realme 5 Pro dual-SIM smartphone. Its crystal green color on a sleek body makes heads turn wherever you go. For the smooth functioning of heavy-duty apps and games, the Realme smartphone features Qualcomm Snapdragon 712 AIE processor. Similarly, the seamless transition between apps and games while multi-tasking',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.0,
                  ),
                )
              ],
            ),
          ),
//          const SizedBox(height: 10.5,),
          Container(
              padding: EdgeInsets.fromLTRB(20, 25, 20, 11),
              child: Text(
                'Reviews',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              )),
//          const  SizedBox(height: 10.5,),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Add comment',
              ),
            ),
          ),

//          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
