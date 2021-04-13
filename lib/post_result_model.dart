import 'dart:convert';

import 'package:http/http.dart' as http;

class PostResult {
  String id;
  String name;
  String job;
  String created;

  PostResult({this.id, this.name, this.job, this.created});

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
      id: object["id"],
      name: object["name"],
      job: object["job"],
      created: object["createdAt"],
    );
  }

  static Future<PostResult> connectToAPI(String _name, String _job) async {
    String apiURL = "https://reqres.in/api/users";

    var apiResult = await http.post(Uri.parse(apiURL), body: {
      "name": _name,
      "job": _job,
    });

    var jsonObject = json.decode(apiResult.body);

    return PostResult.createPostResult(jsonObject);
  }
}
