import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';

class MenuSection extends StatefulWidget {
  @override
  createState() => _MenuSectionState();
}

class _MenuSectionState extends State<MenuSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: <Widget>[
          ResponsiveContainer(
            heightPercent: 100,
            widthPercent: 50,
            child: Container(
              padding: const EdgeInsets.all(30),
              color: Colors.purple[900],
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              suffixIcon: Icon(Icons.search)),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.arrow_back,
                        color: Colors.purple,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '|',
                        style: TextStyle(color: Colors.purple),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.refresh,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  menu,
                ],
              ),
            ),
          ),
          ResponsiveContainer(
            heightPercent: 100,
            widthPercent: 50,
          ),
        ],
      ),
    );
  }
}

Widget menuHeader = Row(
  children: <Widget>[
    Flexible(
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(), suffixIcon: Icon(Icons.search)),
      ),
    ),
    SizedBox(
      width: 8,
    ),
    Icon(
      Icons.arrow_back,
      color: Colors.purple,
    ),
    SizedBox(
      width: 5,
    ),
    Text(
      '|',
      style: TextStyle(color: Colors.purple),
    ),
    SizedBox(
      width: 5,
    ),
    Icon(
      Icons.refresh,
      color: Colors.purple,
    ),
  ],
);

Widget menu = ResponsiveContainer(
  heightPercent: 60,
  widthPercent: 100,
  child: ListView(
    children: <Widget>[
      Wrap(
        children: <Widget>[
          menuItem
        ],
      ),
    ],
  ),
);

Widget menuItem = Stack(
  children: <Widget>[
    Container(
      width: 100,
      child: Image.asset('assets/beer.jpg'),
      decoration: new BoxDecoration(boxShadow: [
        new BoxShadow(
          color: Colors.black87,
          blurRadius: 0,
          // has the effect of extending the shadow
          offset: Offset(
            4.0, // horizontal, move right 10
            5.0, // vertical, move down 10
          ),
        ),
      ]),
    ),
    Opacity(
      opacity: 0.5,
      child: Container(
        color: Colors.black,
        height: 50,
        width: 100,
        child: Align(
          alignment: Alignment
              .center, // Align however you like (i.e .centerRight, centerLeft)
          child: Text(
            'Beer',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    )
  ],
  alignment: AlignmentDirectional.bottomCenter,
);
