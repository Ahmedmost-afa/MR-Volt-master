import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_up/models/user.dart';
import 'package:sign_up/services/auth.dart';

import 'screens/Master Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: MrHome(),
      ),
    );
  }
}
