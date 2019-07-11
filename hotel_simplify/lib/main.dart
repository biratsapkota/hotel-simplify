import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_simplify/menu/costsection.dart';
import 'package:hotel_simplify/menu/menusection.dart';
import './landingpage/landingpage.dart';
import './login/login.dart';
import './bill/bill.dart';

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
        primarySwatch: Colors.deepPurple,
      ),
      home: Login(),
      routes:<String, WidgetBuilder>{ 

        '/menusection':(BuildContext context) => MenuSection(),
        // '/login':(BuildContext context) => LoginPage(),
        '/costsection':(BuildContext context) => CostSection(),
        '/homepage':(BuildContext context)=>LandingPage(),
        '/bill':(BuildContext context)=>Bill()
      }
    );
  }
}

