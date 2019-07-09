import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';

class CostSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              ResponsiveContainer(
                heightPercent: 83.55,
                widthPercent: 50,
                child: Container(),
              ),
              ResponsiveContainer(
                heightPercent: 83.55,
                widthPercent: 50,
                child: Container(color: Colors.grey[300]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
