import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingPageBody extends StatefulWidget {
  final bool notificationTap;
  LandingPageBody(this.notificationTap);
  @override
  createState() => _LandingPageBodyState();
}

class _LandingPageBodyState extends State<LandingPageBody> {
  bool _tableLongPress = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ResponsiveContainer(
            heightPercent: 100.0,
            widthPercent: 30.0,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
                child: ListView(
                  children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Container(
                              padding: const EdgeInsets.all(30.0),
                              child: Text(
                                'Room Types',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                              height: 260,
                              child: ListView(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        40.0, 30, 30, 30),
                                    child: Text(
                                      'Terrace',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25.0,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        40.0, 30, 30, 30),
                                    child: Text(
                                      'Balconies',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25.0,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        40.0, 30, 30, 30),
                                    child: Text(
                                      'Garden',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25.0,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        40.0, 30, 30, 30),
                                    child: Text(
                                      'Lounge',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25.0,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        40.0, 30, 30, 30),
                                    child: Text(
                                      'Terrace',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25.0,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        40.0, 30, 30, 30),
                                    child: Text(
                                      'Balconies',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25.0,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        40.0, 30, 30, 30),
                                    child: Text(
                                      'Garden',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25.0,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              )),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 20.0),
                        Text(
                          'Powered By',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(width: 20.0),
                        SvgPicture.asset(
                          'assets/DanfeLogo.svg',
                          height: 80.0,
                          width: 80.0,
                        ),
                      ],
                    )
                  ],
                ))),
        ResponsiveContainer(
          heightPercent: 100.0,
          widthPercent: 70.0,
          child: Stack(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(30.0),
                  child: ListView(
                    children: <Widget>[
                      Wrap(
                        spacing: 10.0,
                        runSpacing: 30.0,
                        children: <Widget>[
                          _tableLongPress
                              ? InkWell(
                                  onDoubleTap: () {
                                    setState(() {
                                      _tableLongPress = false;
                                    });
                                  },
                                  child: Card(
                                    child: Container(
                                      width: 150.0,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          SizedBox(height: 15),
                                          Text('Table Shift'),
                                          SizedBox(height: 25),
                                          Text('Remove Merge'),
                                          SizedBox(height: 25),
                                          Text('Show Bill'),
                                          SizedBox(height: 25),
                                          Text('Shift Item'),
                                          SizedBox(height: 15),
                                        ],
                                      ),
                                    ),
                                    elevation: 10,
                                  ),
                                )
                              : InkWell(
                                  onLongPress: () {
                                    setState(() {
                                      _tableLongPress = true;
                                    });
                                  },
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('/menusection');
                                  },
                                  child: Card(
                                    child: Container(
                                      width: 150.0,
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              SizedBox(width: 1.0),
                                              Text('14:06'),
                                              Text('22:03'),
                                              SizedBox(width: 0.0)
                                            ],
                                          ),
                                          SvgPicture.asset(
                                              'assets/TableRed.svg',
                                              height: 100.0,
                                              width: 100.0),
                                          Divider(
                                            color: Colors.black,
                                          ),
                                          Text('LG - 2'),
                                          SizedBox(height: 10.0)
                                        ],
                                      ),
                                    ),
                                    elevation: 10,
                                  ),
                                ),
                          Card(
                            child: Container(
                              width: 150.0,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 26.0,
                                  ),
                                  SvgPicture.asset('assets/TableGreen.svg',
                                      height: 100.0, width: 100.0),
                                  Divider(
                                    color: Colors.black,
                                  ),
                                  Text('LG - 2'),
                                  SizedBox(height: 10.0)
                                ],
                              ),
                            ),
                            elevation: 10,
                          ),
                        ],
                      ),
                    ],
                  )),
              Positioned(
                right: 20.0,
                bottom: 0.0,
                child: Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                      groupValue: 6,
                      onChanged: (int value) {},
                    ),
                    Text('Merge Tables')
                  ],
                ),
              ),
              widget.notificationTap
                  ? Positioned(
                      right: 0.0,
                      top: 0.0,
                      child: Container(
                        height: 300,
                        width: 400,
                        color: Colors.purple,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                'Mark all as read',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                            Container(
                              height: 243,
                              child: ListView(
                                children: <Widget>[
                                  Wrap(
                                    alignment: WrapAlignment.spaceAround,
                                    children: <Widget>[
                                      Icon(
                                        Icons.bubble_chart,
                                        color: Colors.yellow,
                                      ),
                                      Container(
                                        width: 350,
                                        child: Text(
                                          'lorem oiahssjabasijgfods9ih fdssdfi jdsbfpusdg gfdsopf hdisfb pesdiohf kdshfpiodssh fpesdsy bfi',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.white,
                                  ),
                                  Wrap(
                                    alignment: WrapAlignment.spaceAround,
                                    children: <Widget>[
                                      Icon(
                                        Icons.bubble_chart,
                                        color: Colors.yellow,
                                      ),
                                      Container(
                                        width: 350,
                                        child: Text(
                                          'lorem oiahssjabasijgfods9ih fdssdfi jdsbfpusdg gfdsopf hdisfb pesdiohf kdshfpiodssh fpesdsy bfi',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.white,
                                  ),
                                  Wrap(
                                    alignment: WrapAlignment.spaceAround,
                                    children: <Widget>[
                                      Icon(
                                        Icons.bubble_chart,
                                        color: Colors.yellow,
                                      ),
                                      Container(
                                        width: 350,
                                        child: Text(
                                          'lorem oiahssjabasijgfods9ih fdssdfi jdsbfpusdg gfdsopf hdisfb pesdiohf kdshfpiodssh fpesdsy bfi',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.white,
                                  ),
                                  Wrap(
                                    alignment: WrapAlignment.spaceAround,
                                    children: <Widget>[
                                      Icon(
                                        Icons.bubble_chart,
                                        color: Colors.yellow,
                                      ),
                                      Container(
                                        width: 350,
                                        child: Text(
                                          'lorem oiahssjabasijgfods9ih fdssdfi jdsbfpusdg gfdsopf hdisfb pesdiohf kdshfpiodssh fpesdsy bfi',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.white,
                                  ),
                                  Wrap(
                                    alignment: WrapAlignment.spaceAround,
                                    children: <Widget>[
                                      Icon(
                                        Icons.bubble_chart,
                                        color: Colors.yellow,
                                      ),
                                      Container(
                                        width: 350,
                                        child: Text(
                                          'lorem oiahssjabasijgfods9ih fdssdfi jdsbfpusdg gfdsopf hdisfb pesdiohf kdshfpiodssh fpesdsy bfi',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.white,
                                  ),
                                  Wrap(
                                    alignment: WrapAlignment.spaceAround,
                                    children: <Widget>[
                                      Icon(
                                        Icons.bubble_chart,
                                        color: Colors.yellow,
                                      ),
                                      Container(
                                        width: 350,
                                        child: Text(
                                          'lorem oiahssjabasijgfods9ih fdssdfi jdsbfpusdg gfdsopf hdisfb pesdiohf kdshfpiodssh fpesdsy bfi',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }
}
