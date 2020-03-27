import 'package:flutter/material.dart';
import 'package:sign_up/screens/home/Best%20Daily%20Offers.dart';
import 'package:sign_up/screens/home/Best%20Seller.dart';
import 'package:sign_up/screens/home/HomeScreen.dart';
import 'package:sign_up/screens/home/wrapper.dart';

import 'devices.dart';

class MrHome extends StatefulWidget {
  @override
  _MrHomeState createState() => _MrHomeState();
}

class _MrHomeState extends State<MrHome> {
  int _currentIndex = 0;
  final tabs = [
    Center(child: HomeScreen()),
    Center(child: device()),
    Center(child: device()),
    Center(child: Wrapper()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Home Page')),
          BottomNavigationBarItem(
              icon: Icon(Icons.build), title: Text('Repair')),
          BottomNavigationBarItem(
              icon: Icon(Icons.autorenew),
              title: Text(
                'Used',
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('Account')),
        ],
        fixedColor: Colors.deepOrange,
        unselectedItemColor: Colors.teal,
        elevation: 20,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
      body: tabs[_currentIndex],
    );
  }
}
