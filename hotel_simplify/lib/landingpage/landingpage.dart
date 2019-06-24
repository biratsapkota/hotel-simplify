import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './landingpagebody.dart';

class LandingPage extends StatefulWidget {
  @override
  createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool notificationTap = false;

  showPin() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: SvgPicture.asset('assets/HotelSimplifyLogo.svg',
              height: 100.0, width: 100.0),
          content: Container(
            height: 400,
            width: 300,
            child: ListView(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your PIN",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w300, color: Colors.white30),
                    alignLabelWithHint: true,
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white70),
                ),
                Container(
                  padding: const EdgeInsets.all(35.0),
                  child: Wrap(
                    spacing: 25.0,
                    runSpacing: 30.0,
                    children: <Widget>[
                      FloatingActionButton(
                        child: Text('1'),
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        child: Text('2'),
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        child: Text('3'),
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        child: Text('4'),
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        child: Text('5'),
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        child: Text('6'),
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        child: Text('7'),
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        child: Text('8'),
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        child: Text('9'),
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        child: Icon(Icons.arrow_back),
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        child: Text('0'),
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        child: Icon(Icons.arrow_forward),
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          backgroundColor: Colors.purple[800],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            InkWell(
                child: SvgPicture.asset('assets/HotelSimplifyLogo.svg',
                    height: 100.0, width: 100.0),
                onTap: () {
                  showPin();
                }),
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
      body: LandingPageBody(notificationTap),
    );
  }
}
