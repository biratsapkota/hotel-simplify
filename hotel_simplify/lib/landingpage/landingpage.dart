import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './landingpagebody.dart';

class LandingPage extends StatefulWidget {
  @override
  createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool notificationTap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            SvgPicture.asset('assets/HotelSimplifyLogo.svg',
                height: 100.0, width: 100.0),
            SizedBox(
              width: 20.0,
            ),
            Text(
              'Waiter Module',
              textScaleFactor: 1,
            ),
          ],
        ),
        actions: <Widget>[
          IconTheme(
              data: IconThemeData(color: Colors.blue),
              child: InkWell(
                onTap: () {
                  setState(() {
                    notificationTap = !notificationTap;
                  });
                },
                child: Icon(Icons.notifications, size: 32.0),
              )),
          SizedBox(width: 15),
          IconTheme(
            data: IconThemeData(color: Colors.blue),
            child: Icon(Icons.refresh, size: 32.0),
          ),
          SizedBox(width: 30),
          CircleAvatar(
            child: SvgPicture.asset(
              'assets/Profile.svg',
              height: 100.0,
            ),
          ),
          SizedBox(width: 15),
          Column(
            children: <Widget>[
              SizedBox(height: 10.0),
              Text(
                'Raju',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Text('Waiter'),
            ],
          ),
          SizedBox(width: 20),
          Icon(Icons.exit_to_app, size: 30.0),
          SizedBox(width: 20),
        ],
      ),
      body: LandingPageBody(),
    );
  }
}