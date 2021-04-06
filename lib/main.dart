import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Container'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          padding: EdgeInsets.fromLTRB(30, 30, 30, 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.amber,
            boxShadow: [
              BoxShadow(
                color: Colors.amber.withOpacity(0.6),
                spreadRadius: 6,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Container(
            color: Colors.brown,
          ),
        ),
      ),
    );
  }
}
