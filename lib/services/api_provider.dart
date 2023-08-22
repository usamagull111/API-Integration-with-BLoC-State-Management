import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/posts.dart';

// REST statusCode checkers
extension RESTCodes on http.Response {
  bool get isSuccessful {
    return statusCode == 200;
  }

  bool get isCreated {
    return statusCode == 201;
  }
}

// General API Provider

abstract class ApiProvider {
  String get baseUrl => 'https://jsonplaceholder.typicode.com/';
  String get apiUrl;
  fetch({String endPoint = ''}) async {
    var response = await http.get(Uri.parse(baseUrl + apiUrl + endPoint));
    if (response.isSuccessful) {
      return jsonDecode(response.body);
    } else {
      return null;
    }
  }
}

class PostsApiProvider extends ApiProvider {
  // Overriding apiURL getter for specific api Urls

  @override
  String get apiUrl => 'posts';

  // Fetching posts

  Future<List<Post>> fetchPosts() async {
    List mapList = await fetch();
    return mapList.map((map) => Post.fromMap(map)).toList();
  }
}
