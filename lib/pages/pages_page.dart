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
            child: Item(
              color: Colors.blue,
              icon: Icons.cached,
              texto: 'OPCION 1',
            ),
          ),
        ]),
        TableRow(children: [
          Item(
            color: Colors.red,
            icon: Icons.double_arrow,
            texto: 'OPCION 4',
          ),
        ]),
        TableRow(children: [
          Item(
            color: Colors.brown,
            icon: Icons.bus_alert,
            texto: 'OPCION 6',
          ),
        ]),
      ],
    );
  }
}

class Item extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String texto;

  const Item({Key key, this.color, this.icon, this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(_screen.width * 0.03),
      height: _screen.width * 0.4,
      width: _screen.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 5,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: this.color,
                child: Icon(
                  this.icon,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Text(
                this.texto,
                style: TextStyle(color: this.color),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
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
