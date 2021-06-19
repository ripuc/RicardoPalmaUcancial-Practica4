import 'package:flutter/material.dart';
import 'package:practica4/pages/pages_page.dart';
/*import 'package:practica4/pages/producto.dart';*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'pages',
      routes: {
        'pages': (_) => PagesPage(),
        /*'pages': (_) => Producto(),*/
      },
    );
  }
}
