import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_simplify/landingpage/landingpage.dart';
import 'package:responsive_container/responsive_container.dart';

class Login extends StatefulWidget {
  @override
  createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _loginSwitch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          ResponsiveContainer(
            heightPercent: 100,
            widthPercent: 60,
            child: ListView(
              children: <Widget>[
                Image.network('https://placeimg.com/480/840/tech',
                    fit: BoxFit.fill)
              ],
            ),
          ),
          ResponsiveContainer(
              heightPercent: 100,
              widthPercent: 40,
              child: Container(
                color: Colors.purple[900],
                child: ListView(
                  padding: const EdgeInsets.all(100),
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/HotelSimplifyLogo.svg',
                      height: 100,
                      width: 100,
                    ),
                    _loginSwitch ? emailLogin(context) : pinLogin(context),
                    SizedBox(height: 20.0),
                    FlatButton(
                      child: Text(
                        'Change login option?',
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      ),
                      onPressed: () {
                        setState(() {
                          _loginSwitch = !_loginSwitch;
                        });
                      },
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

Widget emailLogin(BuildContext context)=> Column(
  children: <Widget>[
    SizedBox(height: 30.0),
    TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: "Enter your username",
        hintStyle:
            TextStyle(fontWeight: FontWeight.w300, color: Colors.white70),
      ),
      textAlign: TextAlign.center,
    ),
    SizedBox(height: 30.0),
    TextField(
      obscureText: true,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: "Enter your password",
        hintStyle:
            TextStyle(fontWeight: FontWeight.w300, color: Colors.white70),
      ),
      textAlign: TextAlign.center,
    ),
    SizedBox(height: 60.0),
    RaisedButton(
      child: Text(
        'Login',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LandingPage(),
          ),
        );
      },
      color: Colors.blue,
    ),
  ],
);

Widget pinLogin(BuildContext context) => Container(
  padding: const EdgeInsets.all(35.0),
  child: Wrap(
    spacing: 25.0,
    runSpacing: 30.0,
    children: <Widget>[
      ResponsiveContainer(
          heightPercent: 5,
          widthPercent: 100,
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Enter your Pin",
              hintStyle:
                  TextStyle(fontWeight: FontWeight.w300, color: Colors.white70),
            ),
            textAlign: TextAlign.center,
          )),
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
);
