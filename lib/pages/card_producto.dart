import 'package:flutter/material.dart';

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
      width: width == null ? 200 : width,
      height: height == null ? 300 : height,
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
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage('assets/space.jpg'),
              height: 250,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Pancakes Calientes',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
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
                    Icon(Icons.access_time),
                    Text(
                      '10 Minutos',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                color: Colors.transparent,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
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
