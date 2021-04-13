import 'package:flutter/material.dart';
import 'package:first_flutter_app/main_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => MainPage()));
          },
          child: Text("LOGIN"),
        ),
      ),
    );
  }
}
