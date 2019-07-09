import 'package:flutter/cupertino.dart';
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
              child: ListView(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
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
          orderList,
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
  heightPercent: 70,
  widthPercent: 100,
  child: ListView(
    children: <Widget>[
      Wrap(
        spacing: 20,
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

Widget orderList = ResponsiveContainer(
  heightPercent: 100,
  widthPercent: 50,
  child: Column(
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
                Icon(Icons.add_circle,color:Colors.grey)
              ],
            ),
            Table(
              textDirection: TextDirection.ltr,
              children: [
                TableRow(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1, color: Colors.black))),
                    children: [
                      Text('S.N.',style: TextStyle( fontWeight: FontWeight.bold)),
                      Text('Items',style: TextStyle( fontWeight: FontWeight.bold)),
                      Text('Quantity',style: TextStyle( fontWeight: FontWeight.bold)),
                      Text('Extra',style: TextStyle( fontWeight: FontWeight.bold))
                    ]),
                tableRow,
                tableRow,
                tableRow,
                tableRow
              ],
            ),
            //FlatButton(onPressed: (){},child: Text('Send Order'),)
          ],
        ),
      )
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
          Icon(Icons.remove_circle,color:Colors.grey),
          SizedBox(width: 5.0),
          Text('1'),
          SizedBox(width: 5.0),
          Icon(Icons.add_circle,color:Colors.grey)
        ],
      ),
      Icon(Icons.restaurant_menu)
    ]);
