import 'package:flutter/material.dart';
import 'package:practica4/pages/card_producto.dart';

class Producto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
          ),
          _headProduct(),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.08,
            left: MediaQuery.of(context).size.width * 0.04,
            child: _bodyProduct(context: context),
          ),
        ],
      ),
    ));
  }

  _headProduct() => Container(
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[],
      ));
  _bodyProduct({BuildContext context}) => Container(
        height: MediaQuery.of(context).size.height * 0.65,
        color: Colors.blueAccent,

        // alignment: Alignment.center,
        child: CardProducto(
          width: MediaQuery.of(context).size.width * 0.92,
          height: 40,
        ),
      );
}
