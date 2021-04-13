import 'package:flutter/material.dart';
import 'package:first_flutter_app/post_result_model.dart';
import 'package:first_flutter_app/user_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult;
  User user;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((postResult != null)
                  ? "${postResult.id} \n${postResult.name} \n${postResult.job} \n${postResult.created}"
                  : ''),
              Text((user != null) ? "${user.id} \n${user.name}" : ''),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      PostResult.connectToAPI("Tryo Asnafi", "Mobile Engineer")
                          .then((value) {
                        postResult = value;
                        setState(() {});
                      });
                    },
                    child: Text("POST"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      User.connectToAPI(12).then((value) {
                        user = value;
                        setState(() {});
                      });
                    },
                    child: Text("GET"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
