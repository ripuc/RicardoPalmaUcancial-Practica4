import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practica4/pages/card_producto.dart';

class PagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Kudos(),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        RotatedBox(
          quarterTurns: 1,
          child: Icon(
            Icons.bar_chart,
            color: Colors.black54,
            size: 50,
          ),
        ),
        Expanded(child: Container()),
        Center(
          child: Text(
            'Kudos',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(child: Container()),
        Icon(
          Icons.copy,
          color: Colors.black87,
          size: 50,
        ),
      ]),
    );
  }
}

_bodyProduct({BuildContext context}) => Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      height: MediaQuery.of(context).size.height * 0.30,

      // alignment: Alignment.center,
      child: CardProducto(
        width: MediaQuery.of(context).size.width * 0.80,
        height: 40,
      ),
    );

class Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
            child: Text(
          'favourites',
          style: TextStyle(
              color: Colors.black87, fontSize: 25, fontWeight: FontWeight.bold),
        )),
        Expanded(child: Container()),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue[800],
          ),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Text(
            'VIEW ALL',
            style: TextStyle(
                color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}

class Kudos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          SafeArea(
            bottom: false,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(),
                  Head(),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.08,
                    left: MediaQuery.of(context).size.width * 0.04,
                    child: _bodyProduct(context: context),
                  ),
                  Content()
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(255, 255, 255, 1),
            primaryColor: Colors.greenAccent,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Color.fromRGBO(220, 216, 215, 1)))),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey[400],
                  size: 40,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.search,
                    size: 40, color: Colors.grey[400]),
                label: ''),
            new BottomNavigationBarItem(
                icon: new Image.asset('assets/corazon.jpg'), label: ''),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.comment,
                    size: 40, color: Colors.grey[400]),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline,
                    size: 40, color: Colors.grey[400]),
                label: ''),
          ],
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Table(
      children: [
        TableRow(children: [
          Container(
            padding: EdgeInsets.only(left: 13.0),
            child: Text(
              'ALL',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ]),
        TableRow(children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              margin: EdgeInsets.all(_screen.width * 0.03),
              height: _screen.width * 0.4,
              width: _screen.width * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Column(children: <Widget>[
                ClipRRect(
                  child: Row(children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/horno.jpg'),
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(child: Container()),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Microwave Oven',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '4.6',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(Icons.star,
                                      size: 15, color: Colors.grey[500]),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    Column(
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage('assets/puntos.jpg'),
                            height: 60,
                            width: 20,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ]),
                )
              ])),
        ]),
        TableRow(children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              margin: EdgeInsets.all(_screen.width * 0.03),
              height: _screen.width * 0.4,
              width: _screen.width * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Column(children: <Widget>[
                ClipRRect(
                  child: Row(children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/licuadora.jpg'),
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(child: Container()),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Microwave Oven',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '4.6',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(Icons.star,
                                      size: 15, color: Colors.grey[500]),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    Column(
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage('assets/puntos.jpg'),
                            height: 60,
                            width: 20,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ]),
                )
              ])),
        ]),
        TableRow(children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              margin: EdgeInsets.all(_screen.width * 0.03),
              height: _screen.width * 0.4,
              width: _screen.width * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Column(children: <Widget>[
                ClipRRect(
                  child: Row(children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/speaker.jpg'),
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(child: Container()),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Microwave Oven',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '4.6',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(Icons.star,
                                      size: 15, color: Colors.grey[500]),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    Column(
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage('assets/puntos.jpg'),
                            height: 60,
                            width: 20,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ]),
                )
              ])),
        ]),
        TableRow(children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              margin: EdgeInsets.all(_screen.width * 0.03),
              height: _screen.width * 0.4,
              width: _screen.width * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Column(children: <Widget>[
                ClipRRect(
                  child: Row(children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/aire.jpg'),
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(child: Container()),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Microwave Oven',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '4.6',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Icon(Icons.star,
                                      size: 15, color: Colors.grey[500]),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    Column(
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage('assets/puntos.jpg'),
                            height: 60,
                            width: 20,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ]),
                )
              ])),
        ]),
      ],
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;

    final principal = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              //begin: Alignment.topCenter,
              //end: Alignment.bottomCenter,
              begin: FractionalOffset(0, 0.5),
              end: FractionalOffset(0, 1),
              colors: [
            Color.fromRGBO(234, 236, 238, 1),
            Color.fromRGBO(213, 216, 220, 1),
          ])),
    );
    final secondary = Transform.rotate(
        angle: -pi / 6,
        child: Container(
          width: _screen.width * 0.9,
          height: _screen.width * 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60), color: Colors.black12),
        ));

    return Stack(
      children: [principal, Positioned(top: -80, left: -110, child: secondary)],
    );
  }
}
