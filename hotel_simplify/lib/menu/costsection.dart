import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';

class CostSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 40,
            color: Colors.yellow[700],
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Total Amount:   2212.54',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              ResponsiveContainer(
                heightPercent: 92.5,
                widthPercent: 50,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  child: Table(
                    children: [
                      TableRow(
                          children: [Text('Sub Amount: '), Text('1780.00')]),
                      TableRow(children: [
                        Divider(),
                        Divider(),
                      ]),
                      TableRow(children: [
                        Text('Discounted Amount: '),
                        Text('0.00')
                      ]),
                      TableRow(children: [
                        Divider(),
                        Divider(),
                      ]),
                      TableRow(
                          children: [Text('Basic Amount: '), Text('1780.00')]),
                      TableRow(children: [
                        Divider(
                          color: Colors.black,
                        ),
                        Divider(
                          color: Colors.black,
                        )
                      ]),
                      TableRow(children: [
                        Text('Service Charge(+10%): '),
                        Text('178.00')
                      ]),
                      TableRow(children: [
                        Divider(),
                        Divider(),
                      ]),
                      TableRow(children: [Text('VAT(+13%): '), Text('254.54')]),
                      TableRow(children: [
                        Divider(
                          color: Colors.black,
                        ),
                        Divider(
                          color: Colors.black,
                        )
                      ]),
                      TableRow(
                          children: [Text('Total Amount: '), Text('2212.54')]),
                    ],
                  ),
                ),
              ),
              ResponsiveContainer(
                heightPercent: 92.5,
                widthPercent: 50,
                child: Container(
                  color: Colors.grey[300],
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(children: [
                        TableCell(
                          child: Container(
                            height: 30.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Sales',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('Amount',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('Cost',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        )
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                border: Border(
                                  top: BorderSide(color: Colors.black),
                                  bottom: BorderSide(color: Colors.black),
                                )),
                            height: 30.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('KOT',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('      ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('680.00',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        )
                      ]),
                      menuPrice('Chopsuey', 1, 250.0),
                      menuPrice('Veg. Chowmein', 1, 230.0),
                      menuPrice('Veg. Momo', 1, 200.0),
                      TableRow(children: [
                        TableCell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                border: Border(
                                  top: BorderSide(color: Colors.black),
                                  bottom: BorderSide(color: Colors.black),
                                )),
                            height: 30.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Pizza',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('      ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('1100.00',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        )
                      ]),
                      menuPrice('Margherita Pizza', 1, 500.0),
                      menuPrice('Onion Paste(E)', 1, 50.0),
                      menuPrice('Margherita Pizza', 1, 500.0),
                      menuPrice('Honey Syrup(E)', 1, 50.0)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

TableRow menuPrice(String item, int quantity, double price) =>
    TableRow(children: [
      TableCell(
        child: Container(
          height: 30.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(item),
              Text(quantity.toString()),
              Text(price.toString())
            ],
          ),
        ),
      )
    ]);
