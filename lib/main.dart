import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Statefull Widget Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$number",
                style: TextStyle(
                  fontSize: _increaseFontSize(),
                ),
              ),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: Text("Tambah Bilangan"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      number++;
    });
  }

  double _increaseFontSize() => 10 + 2 * number.toDouble();
}
