import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardProducto extends StatelessWidget {
  final double width;
  final double height;
  final String image;
  final double time;
  final String numeCard;

  const CardProducto(
      {Key key, this.width, this.height, this.image, this.time, this.numeCard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      width: width == null ? 100 : width,
      height: height == null ? 200 : height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.1),
              blurRadius: 05,
              spreadRadius: 05,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            child: Row(
              children: [
                Container(
                  child: Image(
                    image: AssetImage('assets/lava.jpg'),
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(child: Container()),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.1),
                          blurRadius: 05,
                          spreadRadius: 05,
                        ),
                      ],
                    ),
                    child: Icon(
                      FontAwesomeIcons.telegramPlane,
                      color: Colors.blue,
                      size: 25,
                    )),
              ],
            ),
          ),
          Text(
            'Washer Machine',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 40,
                color: Colors.transparent,
                child: Row(
                  children: <Widget>[
                    Text(
                      'Ready wash Stainless',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                color: Colors.transparent,
                child: Row(
                  children: <Widget>[
                    Text(
                      '4.6',
                      style: TextStyle(fontSize: 12, color: Colors.black),
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
                    Icon(Icons.star, size: 15, color: Colors.grey[500]),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
