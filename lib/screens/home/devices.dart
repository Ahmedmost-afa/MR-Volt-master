import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Best Daily Offers.dart';

class device extends StatefulWidget {
  @override
  _deviceState createState() => _deviceState();
}

class _deviceState extends State<device> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Devices',
          style: TextStyle(
            fontFamily: 'Oswald',
            letterSpacing: 3,
            fontSize: 25,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(7.0),
            child: Column(
              //grandfather column
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: <Widget>[
                    Container(
                      color: Colors.grey[200],
                      width: 190,
                      height: 240,
                      child: Card(
                        child: Column(
                          //father column
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Fridge',
                                style: TextStyle(
                                  fontFamily: 'BreeSerif',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BDailyOff(),
                                    )),
                                child: Image(
                                  image: AssetImage('images/fridge.jpg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.grey[200],
                      width: 190,
                      height: 240,
                      child: Card(
                        child: Column(
                          //father column
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Cookers',
                                style: TextStyle(
                                  fontFamily: 'BreeSerif',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BDailyOff(),
                                    )),
                                child: Image(
                                  image: AssetImage('images/coockers.jpg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Row(children: <Widget>[
                    Container(
                      color: Colors.grey[200],
                      width: 190,
                      height: 240,
                      child: Card(
                        child: Column(
                          //father column
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Conditioner',
                                style: TextStyle(
                                  fontFamily: 'BreeSerif',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BDailyOff(),
                                    )),
                                child: Image(
                                  image: AssetImage('images/Conditioner.jpg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.grey[200],
                      width: 190,
                      height: 240,
                      child: Card(
                        child: Column(
                          //father column
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Wash Machine',
                                style: TextStyle(
                                  fontFamily: 'BreeSerif',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BDailyOff(),
                                    )),
                                child: Image(
                                  image: AssetImage('images/washMachine.jpg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Row(children: <Widget>[
                    Container(
                      color: Colors.grey[200],
                      width: 190,
                      height: 240,
                      child: Card(
                        child: Column(
                          //father column
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Heater',
                                style: TextStyle(
                                  fontFamily: 'BreeSerif',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BDailyOff(),
                                    )),
                                child: Image(
                                    image: AssetImage('images/heater.jpg')),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.grey[200],
                      width: 190,
                      height: 240,
                      child: Card(
                        child: Column(
                          //father column
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Ventilator',
                                style: TextStyle(
                                  fontFamily: 'BreeSerif',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BDailyOff(),
                                    )),
                                child: Image(
                                  image: AssetImage('images/ventilator.jpg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Row(children: <Widget>[
                    Container(
                      color: Colors.grey[200],
                      width: 190,
                      height: 240,
                      child: Card(
                        child: Column(
                          //father column
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Laptob',
                                style: TextStyle(
                                  fontFamily: 'BreeSerif',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BDailyOff(),
                                    )),
                                child: Image(
                                  image: AssetImage('images/laptob.jpg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.grey[200],
                      width: 190,
                      height: 240,
                      child: Card(
                        child: Column(
                          //father column
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Mobile',
                                style: TextStyle(
                                  fontFamily: 'BreeSerif',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BDailyOff(),
                                    )),
                                child: Image(
                                  image: AssetImage('images/mobile.jpg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
