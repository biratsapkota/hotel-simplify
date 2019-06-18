import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './landingpage/landingpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      title: 'Hotel Simplify',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: LandingPage(),
      // routes:<String, WidgetBuilder>{
      //   '/':(BuildContext context) => LandingPage(),
      //   //'/menus':(BuildContext context) => MenuPage(),
      //   //'/login':(BuildContext context) => LoginPage(),
      // }
    );
  }
}

