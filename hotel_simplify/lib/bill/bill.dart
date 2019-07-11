import 'package:flutter/material.dart';

class Bill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        billHeader(context),
        Container(
          color: Colors.grey[400],
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('S.N.', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('Items', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('Quantity', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('Rate', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('Amount', style: TextStyle(fontWeight: FontWeight.w500))
            ],
          ),
        ),
        Container(
          color: Colors.grey[300],
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('KOT', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('680.00', style: TextStyle(fontWeight: FontWeight.w500))
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('1.'),
              Text('Chopsuey', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('1', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('250.00', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('250.00', style: TextStyle(fontWeight: FontWeight.w500))
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('2.'),
              Text('Veg. Chowmein', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('1', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('230.00', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('230.00', style: TextStyle(fontWeight: FontWeight.w500))
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('3.'),
              Text('Veg. Momo', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('1', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('200.00', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('200.00', style: TextStyle(fontWeight: FontWeight.w500))
            ],
          ),
        ),
        Container(
          color: Colors.grey[300],
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('Pizza', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('1100.00', style: TextStyle(fontWeight: FontWeight.w500))
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('4.'),
              Text('Margherita Pizza', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('1', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('500.00', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('500.00', style: TextStyle(fontWeight: FontWeight.w500))
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(''),
              Text('Onion Paste(E)', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('1', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('30.00', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('30.00', style: TextStyle(fontWeight: FontWeight.w500))
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('4.'),
              Text('Margherita Pizza', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('1', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('500.00', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('500.00', style: TextStyle(fontWeight: FontWeight.w500))
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(''),
              Text('Onion Paste(E)', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('1', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('30.00', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('30.00', style: TextStyle(fontWeight: FontWeight.w500))
            ],
          ),
        ),
      ],
    ));
  }

  Widget billHeader(BuildContext context) => Container(
        color: Colors.purple,
        padding: const EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Bill No.    ', style: TextStyle(color: Colors.white)),
                    Text('Table Name:HT-01/HT-11',
                        style: TextStyle(color: Colors.white)),
                    Text('Room: 3', style: TextStyle(color: Colors.white))
                  ],
                )),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('TimeStamp:6/5/2019,4:04:33 PM',
                      style: TextStyle(color: Colors.white)),
                  Text('Waiter: "Superuser"',
                      style: TextStyle(color: Colors.white))
                ],
              ),
            ),
          ],
        ),
      );
}
