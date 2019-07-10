import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuSection extends StatefulWidget {
  @override
  createState() => _MenuSectionState();
}

class _MenuSectionState extends State<MenuSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          width: 0,
        ),
        title: Row(
          children: <Widget>[
            InkWell(
                child: SvgPicture.asset('assets/HotelSimplifyLogo.svg',
                    height: 100.0, width: 100.0),
                onTap: () {}),
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
      body: Row(
        children: <Widget>[
          ResponsiveContainer(
            heightPercent: 100,
            widthPercent: 50,
            child: Container(
              padding: const EdgeInsets.all(30),
              color: Colors.purple[900],
              child: ListView(
                children: <Widget>[
                  menuHeader,
                  SizedBox(
                    height: 20.0,
                  ),
                  menu(context),
                ],
              ),
            ),
          ),
          orderList(context),
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

Widget menu(BuildContext context) => ResponsiveContainer(
      heightPercent: 70,
      widthPercent: 100,
      child: ListView(
        children: <Widget>[
          Wrap(
            spacing: 50,
            runSpacing: 20,
            children: <Widget>[
              menuItem('https://placeimg.com/600/600/nature', 'Beer'),
              menuItem('https://placeimg.com/600/600/nature', 'Chowmein'),
              menuItem('https://placeimg.com/600/600/nature', 'Waffles'),
              menuItem('https://placeimg.com/600/600/nature', 'Coffee'),
              menuItem('https://placeimg.com/600/600/nature', 'Dessert'),
              menuItem('https://placeimg.com/600/600/nature', 'Pizza'),
            ],
          ),
        ],
      ),
    );

Widget menuItem(String imgUrl, String itemName) => Stack(
      children: <Widget>[
        Container(
          width: 100,
          child: Image.network(imgUrl),
          decoration: new BoxDecoration(boxShadow: [
            new BoxShadow(
              color: Colors.black,
              blurRadius: 3,
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
                itemName,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
      alignment: AlignmentDirectional.bottomCenter,
    );

Widget orderList(BuildContext context) => ResponsiveContainer(
      heightPercent: 100,
      widthPercent: 50,
      child: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Orderlist',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: true,
                      onChanged: (value) {},
                      groupValue: 1,
                    ),
                    Text('Merge Tables  '),
                    Text('   |   '),
                    Text('Bill No.  '),
                    Icon(Icons.add_circle, color: Colors.grey)
                  ],
                ),
                Table(
                  textDirection: TextDirection.ltr,
                  children: [
                    TableRow(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(width: 1, color: Colors.black))),
                        children: [
                          Text('S.N.',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Items',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Quantity',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Extra',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ]),
                    tableRow,
                    tableRow,
                    tableRow,
                    tableRow
                  ],
                ),
                SizedBox(height: 50.0),
                OutlineButton(
                  onPressed: () {},
                  child: Text('Send Order'),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ],
            ),
          ),
          ResponsiveContainer(
            heightPercent: 17.4,
            widthPercent: 100,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
                color: Colors.yellow[700],
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Total Amount:  2215.21',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_drop_up,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/costsection');
                        },
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );

TableRow tableRow = TableRow(
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.grey))),
    children: [
      Text('01'),
      Text('Chopsuey'),
      Row(
        children: <Widget>[
          Icon(Icons.remove_circle, color: Colors.grey),
          SizedBox(width: 5.0),
          Text('1'),
          SizedBox(width: 5.0),
          Icon(Icons.add_circle, color: Colors.grey)
        ],
      ),
      Icon(Icons.restaurant_menu)
    ]);
