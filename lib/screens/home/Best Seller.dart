import 'package:flutter/material.dart';
import 'package:sign_up/screens/DevicesDetails/HeaterDetails.dart';
import 'package:sign_up/screens/DevicesDetails/WashingDetails.dart';
import 'package:sign_up/screens/home/ProuductInfo.dart';
import 'package:sign_up/screens/home/devices.dart';
import 'package:sign_up/screens/DevicesDetails//CoockerDetails.dart';
import 'package:sign_up/screens/DevicesDetails//FridgeDetails.dart';
import 'package:sign_up/screens/DevicesDetails//LaptopDetails.dart';


class BestSeller extends StatefulWidget {
  @override
  _BDailyOffState createState() => _BDailyOffState();
}

class _BDailyOffState extends State<BestSeller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,

          title: Text(
            'Best Seller',
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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Card(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FridgesInfo(),
                          )),
                      child: Image(
                        image: AssetImage('images/ta.jpg'),
                      ),
                    ),
                  )),
                  Card(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LaptopsInfo(),
                          )),
                      child: Image(
                        image: AssetImage('images/la.jpg'),
                      ),
                    ),
                  )),
                  Card(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WashingsInfo(),
                          )),
                      child: Image(
                        image: AssetImage('images/gha.jpg'),
                      ),
                    ),
                  )),
                  Card(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CoocersInfo(),
                          )),
                      child: Image(
                        image: AssetImage('images/bo.png'),
                      ),
                    ),
                  )),
                  Card(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HeatersInfo(),
                          )),
                      child: Image(
                        image: AssetImage('images/heater.jpg'),
                      ),
                    ),
                  )),
                ],
              ),
            )
          ],
        ));
  }
}
