import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        title: Text(
          'Devices',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
        backgroundColor: Colors.blue,
        elevation: 0.0,
        leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(22.0),
            child: Column(
              //grandfather column
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(children: <Widget>[
                  Container(
                    color: Colors.white,
                    width: 150,
                    height: 210,
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 15.0),
                    child: Column(
                      //father column
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(22.0),
                              child: Image.asset('assets/fridge3.png')),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Fridge',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: 150,
                    height: 210,
                    padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 15.0),
                    margin: EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                    child: Column(
                      //father column
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(22.0),
                              child: Image.asset('assets/cooker.png')),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'coocker',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
                Row(children: <Widget>[
                  //second row
                  Container(
                    color: Colors.white,
                    width: 150,
                    height: 210,
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 15.0),
                    margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: Column(
                      //father column
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(22.0),
                              child: Image.asset('assets/washing.png')),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Washing Machine',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: 150,
                    height: 210,
                    padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 15.0),
                    margin: EdgeInsets.fromLTRB(40.0, 10.0, 0.0, 0.0),
                    child: Column(
                      //father column
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(22.0),
                              child: Image.asset('assets/heater.png')),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Water heater',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
                Row(children: <Widget>[
                  //second row
                  Container(
                    color: Colors.white,
                    width: 150,
                    height: 210,
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 15.0),
                    margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: Column(
                      //father column
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(22.0),
                              child: Image.asset('assets/laptob.png')),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Laptob',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: 150,
                    height: 210,
                    padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 15.0),
                    margin: EdgeInsets.fromLTRB(40.0, 10.0, 0.0, 0.0),
                    child: Column(
                      //father column
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(22.0),
                              child: Image.asset('assets/mobile.png')),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Mobile',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
                Row(children: <Widget>[
                  //second row
                  Container(
                    color: Colors.white,
                    width: 150,
                    height: 210,
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 15.0),
                    margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: Column(
                      //father column
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(22.0),
                              child: Image.asset('assets/conditioner.png')),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Conditioner',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: 150,
                    height: 210,
                    padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 15.0),
                    margin: EdgeInsets.fromLTRB(40.0, 10.0, 0.0, 0.0),
                    child: Column(
                      //father column
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(22.0),
                              child: Image.asset('assets/ventilator.png')),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Ventilator',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
